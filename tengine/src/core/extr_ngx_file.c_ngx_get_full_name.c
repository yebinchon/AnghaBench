
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_cpymem (int *,int *,size_t) ;
 int ngx_cpystrn (int *,int *,int) ;
 int * ngx_pnalloc (int *,size_t) ;
 int ngx_test_full_name (TYPE_1__*) ;

ngx_int_t
ngx_get_full_name(ngx_pool_t *pool, ngx_str_t *prefix, ngx_str_t *name)
{
    size_t len;
    u_char *p, *n;
    ngx_int_t rc;

    rc = ngx_test_full_name(name);

    if (rc == NGX_OK) {
        return rc;
    }

    len = prefix->len;
    n = ngx_pnalloc(pool, len + name->len + 1);
    if (n == ((void*)0)) {
        return NGX_ERROR;
    }

    p = ngx_cpymem(n, prefix->data, len);
    ngx_cpystrn(p, name->data, name->len + 1);

    name->len += len;
    name->data = n;

    return NGX_OK;
}
