
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_5__ {int log; } ;
typedef TYPE_1__ ngx_peer_connection_t ;
struct TYPE_6__ {int data; int (* original_free_peer ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_2__ ngx_http_upstream_dynamic_peer_data_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
ngx_http_upstream_free_dynamic_peer(ngx_peer_connection_t *pc, void *data,
    ngx_uint_t state)
{
    ngx_http_upstream_dynamic_peer_data_t *bp = data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "free dynamic peer");

    bp->original_free_peer(pc, bp->data, state);
}
