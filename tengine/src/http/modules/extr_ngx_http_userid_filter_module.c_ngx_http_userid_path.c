
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_5__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * ngx_cpymem (int *,char*,int) ;
 int ngx_memcpy (int *,int *,int) ;
 int * ngx_pnalloc (int ,int) ;

__attribute__((used)) static char *
ngx_http_userid_path(ngx_conf_t *cf, void *post, void *data)
{
    ngx_str_t *path = data;

    u_char *p, *new;

    new = ngx_pnalloc(cf->pool, sizeof("; path=") - 1 + path->len);
    if (new == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    p = ngx_cpymem(new, "; path=", sizeof("; path=") - 1);
    ngx_memcpy(p, path->data, path->len);

    path->len += sizeof("; path=") - 1;
    path->data = new;

    return NGX_CONF_OK;
}
