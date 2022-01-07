
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_7__ {int len; int * data; } ;
struct TYPE_8__ {TYPE_1__ host; int socklen; int sockaddr; } ;
typedef TYPE_2__ ngx_http_upstream_resolved_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_2__* resolved; } ;
typedef TYPE_4__ ngx_http_proxy_connect_upstream_t ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 int __ngx_sock_ntop (int ,int ,int *,int ,int) ;
 int * ngx_pnalloc (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_connect_sock_ntop(ngx_http_request_t *r,
    ngx_http_proxy_connect_upstream_t *u)
{
    u_char *p;
    ngx_int_t len;
    ngx_http_upstream_resolved_t *ur;

    ur = u->resolved;



    p = ngx_pnalloc(r->pool, NGX_SOCKADDR_STRLEN);
    if (p == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    len = __ngx_sock_ntop(ur->sockaddr, ur->socklen, p, NGX_SOCKADDR_STRLEN, 1);

    u->resolved->host.data = p;
    u->resolved->host.len = len;

    return NGX_OK;
}
