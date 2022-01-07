
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


struct sockaddr {scalar_t__ sa_family; } ;
typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_21__ {struct sockaddr* sockaddr; } ;
typedef TYPE_2__ ngx_http_listen_opt_t ;
typedef int ngx_http_core_srv_conf_t ;
struct TYPE_22__ {TYPE_17__* ports; } ;
typedef TYPE_3__ ngx_http_core_main_conf_t ;
struct TYPE_20__ {int * elts; } ;
struct TYPE_23__ {scalar_t__ family; TYPE_1__ addrs; int port; } ;
typedef TYPE_4__ ngx_http_conf_port_t ;
struct TYPE_24__ {int temp_pool; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int in_port_t ;
struct TYPE_19__ {size_t nelts; TYPE_4__* elts; } ;


 int NGX_ERROR ;
 TYPE_17__* ngx_array_create (int ,int,int) ;
 TYPE_4__* ngx_array_push (TYPE_17__*) ;
 int ngx_http_add_address (TYPE_5__*,int *,TYPE_4__*,TYPE_2__*) ;
 int ngx_http_add_addresses (TYPE_5__*,int *,TYPE_4__*,TYPE_2__*) ;
 TYPE_3__* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_core_module ;
 int ngx_inet_get_port (struct sockaddr*) ;

ngx_int_t
ngx_http_add_listen(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_listen_opt_t *lsopt)
{
    in_port_t p;
    ngx_uint_t i;
    struct sockaddr *sa;
    ngx_http_conf_port_t *port;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    if (cmcf->ports == ((void*)0)) {
        cmcf->ports = ngx_array_create(cf->temp_pool, 2,
                                       sizeof(ngx_http_conf_port_t));
        if (cmcf->ports == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    sa = lsopt->sockaddr;
    p = ngx_inet_get_port(sa);

    port = cmcf->ports->elts;
    for (i = 0; i < cmcf->ports->nelts; i++) {

        if (p != port[i].port || sa->sa_family != port[i].family) {
            continue;
        }



        return ngx_http_add_addresses(cf, cscf, &port[i], lsopt);
    }



    port = ngx_array_push(cmcf->ports);
    if (port == ((void*)0)) {
        return NGX_ERROR;
    }

    port->family = sa->sa_family;
    port->port = p;
    port->addrs.elts = ((void*)0);

    return ngx_http_add_address(cf, cscf, port, lsopt);
}
