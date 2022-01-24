#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
typedef  size_t ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_21__ {struct sockaddr* sockaddr; } ;
typedef  TYPE_2__ ngx_http_listen_opt_t ;
typedef  int /*<<< orphan*/  ngx_http_core_srv_conf_t ;
struct TYPE_22__ {TYPE_17__* ports; } ;
typedef  TYPE_3__ ngx_http_core_main_conf_t ;
struct TYPE_20__ {int /*<<< orphan*/ * elts; } ;
struct TYPE_23__ {scalar_t__ family; TYPE_1__ addrs; int /*<<< orphan*/  port; } ;
typedef  TYPE_4__ ngx_http_conf_port_t ;
struct TYPE_24__ {int /*<<< orphan*/  temp_pool; } ;
typedef  TYPE_5__ ngx_conf_t ;
typedef  int /*<<< orphan*/  in_port_t ;
struct TYPE_19__ {size_t nelts; TYPE_4__* elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 TYPE_17__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__* FUNC1 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*) ; 

ngx_int_t
FUNC6(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_listen_opt_t *lsopt)
{
    in_port_t                   p;
    ngx_uint_t                  i;
    struct sockaddr            *sa;
    ngx_http_conf_port_t       *port;
    ngx_http_core_main_conf_t  *cmcf;

    cmcf = FUNC4(cf, ngx_http_core_module);

    if (cmcf->ports == NULL) {
        cmcf->ports = FUNC0(cf->temp_pool, 2,
                                       sizeof(ngx_http_conf_port_t));
        if (cmcf->ports == NULL) {
            return NGX_ERROR;
        }
    }

    sa = lsopt->sockaddr;
    p = FUNC5(sa);

    port = cmcf->ports->elts;
    for (i = 0; i < cmcf->ports->nelts; i++) {

        if (p != port[i].port || sa->sa_family != port[i].family) {
            continue;
        }

        /* a port is already in the port list */

        return FUNC3(cf, cscf, &port[i], lsopt);
    }

    /* add a port to the port list */

    port = FUNC1(cmcf->ports);
    if (port == NULL) {
        return NGX_ERROR;
    }

    port->family = sa->sa_family;
    port->port = p;
    port->addrs.elts = NULL;

    return FUNC2(cf, cscf, port, lsopt);
}