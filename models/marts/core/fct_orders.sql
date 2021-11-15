with orders as (
    select * from {{ ref('stg_orders') }}
),

customers as (
    select * from {{ ref('stg_customers') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
),

final as (

    select
        customers.customer_id,
        orders.order_id,
        payments.amount amount


    from customers

    left join orders orders ON orders.customer_id = customers.customer_id
    left join payments payments ON payments.order_id = orders.order_id

)

select * from final