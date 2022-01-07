
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_core_srv_conf_t ;
struct TYPE_12__ {size_t nelts; int ** elts; } ;
struct TYPE_9__ {int addr_text; } ;
struct TYPE_10__ {TYPE_7__ servers; TYPE_1__ opt; } ;
typedef TYPE_2__ ngx_http_conf_addr_t ;
struct TYPE_11__ {int temp_pool; } ;
typedef TYPE_3__ ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_7__*,int ,int,int) ;
 int ** ngx_array_push (TYPE_7__*) ;
 int ngx_conf_log_error (int ,TYPE_3__*,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_server(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_conf_addr_t *addr)
{
    ngx_uint_t i;
    ngx_http_core_srv_conf_t **server;

    if (addr->servers.elts == ((void*)0)) {
        if (ngx_array_init(&addr->servers, cf->temp_pool, 4,
                           sizeof(ngx_http_core_srv_conf_t *))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

    } else {
        server = addr->servers.elts;
        for (i = 0; i < addr->servers.nelts; i++) {
            if (server[i] == cscf) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "a duplicate listen %V",
                                   &addr->opt.addr_text);
                return NGX_ERROR;
            }
        }
    }

    server = ngx_array_push(&addr->servers);
    if (server == ((void*)0)) {
        return NGX_ERROR;
    }

    *server = cscf;

    return NGX_OK;
}
