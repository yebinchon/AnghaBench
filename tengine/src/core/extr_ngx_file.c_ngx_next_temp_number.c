
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_uint_t ;
typedef int ngx_atomic_uint_t ;


 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_random_number ;
 int ngx_temp_number ;

ngx_atomic_uint_t
ngx_next_temp_number(ngx_uint_t collision)
{
    ngx_atomic_uint_t n, add;

    add = collision ? ngx_random_number : 1;

    n = ngx_atomic_fetch_add(ngx_temp_number, add);

    return n + add;
}
