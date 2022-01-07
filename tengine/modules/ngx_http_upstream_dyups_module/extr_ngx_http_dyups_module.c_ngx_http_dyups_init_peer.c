
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_20__ {int * data; int handler; } ;
typedef TYPE_3__ ngx_pool_cleanup_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_6__** srv_conf; } ;
typedef TYPE_4__ ngx_http_upstream_srv_conf_t ;
struct TYPE_22__ {int pool; TYPE_2__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_23__ {scalar_t__ (* init ) (TYPE_5__*,TYPE_4__*) ;int ref; } ;
typedef TYPE_6__ ngx_http_dyups_upstream_srv_conf_t ;
struct TYPE_24__ {int free; int get; struct TYPE_24__* data; TYPE_6__* scf; } ;
typedef TYPE_7__ ngx_http_dyups_ctx_t ;
struct TYPE_18__ {int save_session; int set_session; int free; int get; TYPE_7__* data; } ;
struct TYPE_19__ {TYPE_1__ peer; } ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {size_t ctx_index; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_15__* ngx_cycle ;
 int ngx_http_dyups_clean_request ;
 int ngx_http_dyups_free_peer ;
 int ngx_http_dyups_get_peer ;
 TYPE_12__ ngx_http_dyups_module ;
 int ngx_http_dyups_save_peer_session ;
 int ngx_http_dyups_set_peer_session ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 TYPE_7__* ngx_pcalloc (int ,int) ;
 TYPE_3__* ngx_pool_cleanup_add (int ,int ) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_init_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_int_t rc;
    ngx_pool_cleanup_t *cln;
    ngx_http_dyups_ctx_t *ctx;
    ngx_http_dyups_upstream_srv_conf_t *dscf;

    dscf = us->srv_conf[ngx_http_dyups_module.ctx_index];

    rc = dscf->init(r, us);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] dynamic upstream init peer: %i",
                   rc);

    if (rc != NGX_OK) {
        return rc;
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_dyups_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->scf = dscf;
    ctx->data = r->upstream->peer.data;
    ctx->get = r->upstream->peer.get;
    ctx->free = r->upstream->peer.free;

    r->upstream->peer.data = ctx;
    r->upstream->peer.get = ngx_http_dyups_get_peer;
    r->upstream->peer.free = ngx_http_dyups_free_peer;






    cln = ngx_pool_cleanup_add(r->pool, 0);
    if (cln == ((void*)0)) {
        return NGX_ERROR;
    }

    dscf->ref++;

    cln->handler = ngx_http_dyups_clean_request;
    cln->data = &dscf->ref;

    return NGX_OK;
}
