
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
typedef int ngx_array_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int *,int ,size_t) ;
 int * ngx_palloc (int *,int) ;

ngx_array_t *
ngx_array_create(ngx_pool_t *p, ngx_uint_t n, size_t size)
{
    ngx_array_t *a;

    a = ngx_palloc(p, sizeof(ngx_array_t));
    if (a == ((void*)0)) {
        return ((void*)0);
    }

    if (ngx_array_init(a, p, n, size) != NGX_OK) {
        return ((void*)0);
    }

    return a;
}
