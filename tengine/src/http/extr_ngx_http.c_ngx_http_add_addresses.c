
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {size_t default_server; size_t proxy_protocol; size_t ssl; size_t http2; int addr_text; scalar_t__ set; int socklen; int sockaddr; } ;
typedef TYPE_2__ ngx_http_listen_opt_t ;
typedef int ngx_http_core_srv_conf_t ;
struct TYPE_10__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_12__ {TYPE_1__ addrs; } ;
typedef TYPE_3__ ngx_http_conf_port_t ;
struct TYPE_13__ {TYPE_2__ opt; int * default_server; } ;
typedef TYPE_4__ ngx_http_conf_addr_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_cmp_sockaddr (int ,int ,int ,int ,int ) ;
 int ngx_conf_log_error (int ,int *,int ,char*,int *) ;
 scalar_t__ ngx_http_add_address (int *,int *,TYPE_3__*,TYPE_2__*) ;
 scalar_t__ ngx_http_add_server (int *,int *,TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_addresses(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_conf_port_t *port, ngx_http_listen_opt_t *lsopt)
{
    ngx_uint_t i, default_server, proxy_protocol;
    ngx_http_conf_addr_t *addr;
    addr = port->addrs.elts;

    for (i = 0; i < port->addrs.nelts; i++) {

        if (ngx_cmp_sockaddr(lsopt->sockaddr, lsopt->socklen,
                             addr[i].opt.sockaddr,
                             addr[i].opt.socklen, 0)
            != NGX_OK)
        {
            continue;
        }



        if (ngx_http_add_server(cf, cscf, &addr[i]) != NGX_OK) {
            return NGX_ERROR;
        }


        default_server = addr[i].opt.default_server;

        proxy_protocol = lsopt->proxy_protocol || addr[i].opt.proxy_protocol;
        if (lsopt->set) {

            if (addr[i].opt.set) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "duplicate listen options for %V",
                                   &addr[i].opt.addr_text);
                return NGX_ERROR;
            }

            addr[i].opt = *lsopt;
        }



        if (lsopt->default_server) {

            if (default_server) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "a duplicate default server for %V",
                                   &addr[i].opt.addr_text);
                return NGX_ERROR;
            }

            default_server = 1;
            addr[i].default_server = cscf;
        }

        addr[i].opt.default_server = default_server;
        addr[i].opt.proxy_protocol = proxy_protocol;







        return NGX_OK;
    }



    return ngx_http_add_address(cf, cscf, port, lsopt);
}
