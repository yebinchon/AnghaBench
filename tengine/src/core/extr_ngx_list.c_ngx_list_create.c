
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
typedef int ngx_list_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_list_init (int *,int *,int ,size_t) ;
 int * ngx_palloc (int *,int) ;

ngx_list_t *
ngx_list_create(ngx_pool_t *pool, ngx_uint_t n, size_t size)
{
    ngx_list_t *list;

    list = ngx_palloc(pool, sizeof(ngx_list_t));
    if (list == ((void*)0)) {
        return ((void*)0);
    }

    if (ngx_list_init(list, pool, n, size) != NGX_OK) {
        return ((void*)0);
    }

    return list;
}
