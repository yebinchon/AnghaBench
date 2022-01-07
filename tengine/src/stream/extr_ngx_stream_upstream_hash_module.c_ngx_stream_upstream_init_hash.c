
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int init; } ;
struct TYPE_6__ {TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_stream_upstream_srv_conf_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_stream_upstream_init_hash_peer ;
 scalar_t__ ngx_stream_upstream_init_round_robin (int *,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_upstream_init_hash(ngx_conf_t *cf,
    ngx_stream_upstream_srv_conf_t *us)
{
    if (ngx_stream_upstream_init_round_robin(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    us->peer.init = ngx_stream_upstream_init_hash_peer;

    return NGX_OK;
}
