
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_2__ {int data; int (* original_notify_peer ) (int *,int ,int ) ;} ;
typedef TYPE_1__ ngx_stream_multi_upstream_peer_data_t ;
typedef int ngx_peer_connection_t ;


 int stub1 (int *,int ,int ) ;

__attribute__((used)) static void
ngx_stream_multi_upstream_notify_peer(ngx_peer_connection_t *pc,
    void *data, ngx_uint_t type)
{
    ngx_stream_multi_upstream_peer_data_t *kp = data;

    if (kp->original_notify_peer) {
        kp->original_notify_peer(pc, kp->data, type);
    }
}
