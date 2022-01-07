
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_14__ {scalar_t__ (* original_init_peer ) (TYPE_6__*,int *) ;} ;
typedef TYPE_4__ ngx_http_upstream_dynamic_srv_conf_t ;
struct TYPE_15__ {int original_save_session; int original_set_session; TYPE_6__* request; int original_free_peer; int original_get_peer; struct TYPE_15__* data; TYPE_3__* upstream; TYPE_4__* conf; } ;
typedef TYPE_5__ ngx_http_upstream_dynamic_peer_data_t ;
struct TYPE_16__ {TYPE_3__* upstream; int pool; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_12__ {int save_session; int set_session; int free; int get; TYPE_5__* data; } ;
struct TYPE_13__ {TYPE_2__ peer; } ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_http_conf_upstream_srv_conf (int *,int ) ;
 int ngx_http_upstream_dynamic_module ;
 int ngx_http_upstream_dynamic_save_session ;
 int ngx_http_upstream_dynamic_set_session ;
 int ngx_http_upstream_free_dynamic_peer ;
 int ngx_http_upstream_get_dynamic_peer ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_5__* ngx_palloc (int ,int) ;
 scalar_t__ stub1 (TYPE_6__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_dynamic_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_http_upstream_dynamic_peer_data_t *dp;
    ngx_http_upstream_dynamic_srv_conf_t *dcf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "init dynamic peer");

    dcf = ngx_http_conf_upstream_srv_conf(us,
                                          ngx_http_upstream_dynamic_module);

    dp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_dynamic_peer_data_t));
    if (dp == ((void*)0)) {
        return NGX_ERROR;
    }

    if (dcf->original_init_peer(r, us) != NGX_OK) {
        return NGX_ERROR;
    }

    dp->conf = dcf;
    dp->upstream = r->upstream;
    dp->data = r->upstream->peer.data;
    dp->original_get_peer = r->upstream->peer.get;
    dp->original_free_peer = r->upstream->peer.free;
    dp->request = r;

    r->upstream->peer.data = dp;
    r->upstream->peer.get = ngx_http_upstream_get_dynamic_peer;
    r->upstream->peer.free = ngx_http_upstream_free_dynamic_peer;
    return NGX_OK;
}
