
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {scalar_t__ (* init_upstream ) (TYPE_4__*,TYPE_2__*) ;int init; TYPE_3__* data; } ;
struct TYPE_19__ {TYPE_1__ peer; TYPE_6__** srv_conf; int * servers; } ;
typedef TYPE_2__ ngx_http_upstream_srv_conf_t ;
typedef int ngx_http_upstream_server_t ;
struct TYPE_20__ {void* number; void* init_number; struct TYPE_20__* next; } ;
typedef TYPE_3__ ngx_http_upstream_rr_peers_t ;
typedef scalar_t__ (* ngx_http_upstream_init_pt ) (TYPE_4__*,TYPE_2__*) ;
struct TYPE_22__ {int init; } ;
typedef TYPE_6__ ngx_http_dyups_upstream_srv_conf_t ;
struct TYPE_23__ {int ctx; int pool; TYPE_2__* upstream; } ;
typedef TYPE_7__ ngx_http_dyups_srv_conf_t ;
typedef int ngx_cycle_t ;
struct TYPE_21__ {char* name; int ctx; int log; int cmd_type; void* module_type; int pool; int * cycle; int * args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_buf_t ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {size_t ctx_index; } ;


 scalar_t__ NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_MAIN_CONF ;
 void* NGX_HTTP_MODULE ;
 int NGX_HTTP_UPS_CONF ;
 scalar_t__ NGX_OK ;
 void* ngx_array_create (int ,int,int) ;
 TYPE_15__* ngx_cycle ;
 scalar_t__ ngx_dyups_parse_upstream (TYPE_4__*,int *) ;
 int ngx_http_dyups_init_peer ;
 TYPE_12__ ngx_http_dyups_module ;
 scalar_t__ ngx_http_upstream_init_round_robin (TYPE_4__*,TYPE_2__*) ;
 int ngx_memzero (TYPE_4__*,int) ;
 void* ngx_random () ;

__attribute__((used)) static ngx_int_t
ngx_dyups_add_server(ngx_http_dyups_srv_conf_t *duscf, ngx_buf_t *buf)
{
    ngx_conf_t cf;
    ngx_http_upstream_init_pt init;
    ngx_http_upstream_srv_conf_t *uscf;
    ngx_http_dyups_upstream_srv_conf_t *dscf;

    uscf = duscf->upstream;

    if (uscf->servers == ((void*)0)) {
        uscf->servers = ngx_array_create(duscf->pool, 4,
                                         sizeof(ngx_http_upstream_server_t));
        if (uscf->servers == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    ngx_memzero(&cf, sizeof(ngx_conf_t));
    cf.name = "dyups_init_module_conf";
    cf.pool = duscf->pool;
    cf.cycle = (ngx_cycle_t *) ngx_cycle;
    cf.module_type = NGX_HTTP_MODULE;
    cf.cmd_type = NGX_HTTP_UPS_CONF;
    cf.log = ngx_cycle->log;
    cf.ctx = duscf->ctx;
    cf.args = ngx_array_create(duscf->pool, 10, sizeof(ngx_str_t));
    if (cf.args == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_dyups_parse_upstream(&cf, buf) != NGX_CONF_OK) {
        return NGX_ERROR;
    }

    ngx_memzero(&cf, sizeof(ngx_conf_t));
    cf.name = "dyups_init_upstream";
    cf.cycle = (ngx_cycle_t *) ngx_cycle;
    cf.pool = duscf->pool;
    cf.module_type = NGX_HTTP_MODULE;
    cf.cmd_type = NGX_HTTP_MAIN_CONF;
    cf.log = ngx_cycle->log;
    cf.ctx = duscf->ctx;


    init = uscf->peer.init_upstream ? uscf->peer.init_upstream:
        ngx_http_upstream_init_round_robin;

    if (init(&cf, uscf) != NGX_OK) {
        return NGX_ERROR;
    }
    dscf = uscf->srv_conf[ngx_http_dyups_module.ctx_index];
    dscf->init = uscf->peer.init;

    uscf->peer.init = ngx_http_dyups_init_peer;

    return NGX_OK;
}
