
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int init; } ;
struct TYPE_10__ {scalar_t__ shm_zone; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_stream_upstream_srv_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int pool; int log; } ;
typedef TYPE_3__ ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_stream_upstream_init_random_peer ;
 scalar_t__ ngx_stream_upstream_init_round_robin (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ ngx_stream_upstream_update_random (int ,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_upstream_init_random(ngx_conf_t *cf,
    ngx_stream_upstream_srv_conf_t *us)
{
    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, cf->log, 0, "init random");

    if (ngx_stream_upstream_init_round_robin(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    us->peer.init = ngx_stream_upstream_init_random_peer;







    return ngx_stream_upstream_update_random(cf->pool, us);
}
