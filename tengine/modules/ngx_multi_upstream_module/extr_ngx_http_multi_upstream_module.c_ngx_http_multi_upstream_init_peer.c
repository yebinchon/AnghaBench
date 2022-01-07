
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
struct TYPE_14__ {TYPE_3__* upstream; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ (* original_init_peer ) (TYPE_4__*,int *) ;} ;
typedef TYPE_5__ ngx_http_multi_upstream_srv_conf_t ;
struct TYPE_16__ {int original_save_session; int original_set_session; int original_notify_peer; int original_free_peer; int original_get_peer; struct TYPE_16__* data; TYPE_3__* upstream; TYPE_4__* request; TYPE_5__* conf; } ;
typedef TYPE_6__ ngx_http_multi_upstream_peer_data_t ;
struct TYPE_12__ {int save_session; int set_session; int notify; int free; int get; TYPE_6__* data; } ;
struct TYPE_13__ {int multi; TYPE_2__ peer; } ;
struct TYPE_11__ {int pool; int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_5__* ngx_http_conf_upstream_srv_conf (int *,int ) ;
 int ngx_http_multi_upstream_free_peer ;
 int ngx_http_multi_upstream_get_peer ;
 int ngx_http_multi_upstream_module ;
 int ngx_http_multi_upstream_notify_peer ;
 int ngx_http_multi_upstream_save_session ;
 int ngx_http_multi_upstream_set_session ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 scalar_t__ stub1 (TYPE_4__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_multi_upstream_init_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_http_multi_upstream_peer_data_t *kp;
    ngx_http_multi_upstream_srv_conf_t *kcf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "multi: init multi upstream peer");

    kcf = ngx_http_conf_upstream_srv_conf(us,
                                          ngx_http_multi_upstream_module);

    kp = ngx_pcalloc(r->connection->pool, sizeof(ngx_http_multi_upstream_peer_data_t));
    if (kp == ((void*)0)) {
        return NGX_ERROR;
    }

    if (kcf->original_init_peer(r, us) != NGX_OK) {
        return NGX_ERROR;
    }

    kp->conf = kcf;
    kp->request = r;
    kp->upstream = r->upstream;
    kp->data = r->upstream->peer.data;
    kp->original_get_peer = r->upstream->peer.get;
    kp->original_free_peer = r->upstream->peer.free;
    kp->original_notify_peer = r->upstream->peer.notify;

    r->upstream->peer.data = kp;
    r->upstream->peer.get = ngx_http_multi_upstream_get_peer;
    r->upstream->peer.free = ngx_http_multi_upstream_free_peer;
    r->upstream->peer.notify = ngx_http_multi_upstream_notify_peer;
    r->upstream->multi = 1;
    return NGX_OK;
}
