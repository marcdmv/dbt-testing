select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount as amount,
    created as created_at
    
from dbt-tutorial.stripe.payment