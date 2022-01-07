
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_5__ {char* data; size_t len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;
struct TYPE_6__ {int prefix; } ;


 scalar_t__ NGX_OK ;
 char* ngx_copy (char*,char*,size_t) ;
 TYPE_4__* ngx_cycle ;
 scalar_t__ ngx_get_full_name (int *,TYPE_1__*,TYPE_1__*) ;
 char* ngx_palloc (int *,size_t) ;

u_char *
ngx_http_lua_rebase_path(ngx_pool_t *pool, u_char *src, size_t len)
{
    u_char *p;
    ngx_str_t dst;

    dst.data = ngx_palloc(pool, len + 1);
    if (dst.data == ((void*)0)) {
        return ((void*)0);
    }

    dst.len = len;

    p = ngx_copy(dst.data, src, len);
    *p = '\0';

    if (ngx_get_full_name(pool, (ngx_str_t *) &ngx_cycle->prefix, &dst)
        != NGX_OK)
    {
        return ((void*)0);
    }

    return dst.data;
}
