
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int ngx_int_t ;
struct TYPE_19__ {int addr_text; scalar_t__ ssl; scalar_t__ http2; } ;
typedef TYPE_3__ ngx_http_listen_opt_t ;
typedef int ngx_http_core_srv_conf_t ;
struct TYPE_16__ {int * elts; } ;
struct TYPE_20__ {TYPE_14__ addrs; } ;
typedef TYPE_4__ ngx_http_conf_port_t ;
struct TYPE_18__ {int * elts; } ;
struct TYPE_17__ {scalar_t__ size; int * buckets; } ;
struct TYPE_21__ {TYPE_2__ servers; int * default_server; int * regex; scalar_t__ nregex; int * wc_tail; int * wc_head; TYPE_1__ hash; TYPE_3__ opt; } ;
typedef TYPE_5__ ngx_http_conf_addr_t ;
struct TYPE_22__ {int temp_pool; } ;
typedef TYPE_6__ ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_14__*,int ,int,int) ;
 TYPE_5__* ngx_array_push (TYPE_14__*) ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*,int *) ;
 int ngx_http_add_server (TYPE_6__*,int *,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_address(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_conf_port_t *port, ngx_http_listen_opt_t *lsopt)
{
    ngx_http_conf_addr_t *addr;

    if (port->addrs.elts == ((void*)0)) {
        if (ngx_array_init(&port->addrs, cf->temp_pool, 4,
                           sizeof(ngx_http_conf_addr_t))
            != NGX_OK)
        {
            return NGX_ERROR;
        }
    }
    addr = ngx_array_push(&port->addrs);
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    addr->opt = *lsopt;
    addr->hash.buckets = ((void*)0);
    addr->hash.size = 0;
    addr->wc_head = ((void*)0);
    addr->wc_tail = ((void*)0);




    addr->default_server = cscf;
    addr->servers.elts = ((void*)0);

    return ngx_http_add_server(cf, cscf, addr);
}
