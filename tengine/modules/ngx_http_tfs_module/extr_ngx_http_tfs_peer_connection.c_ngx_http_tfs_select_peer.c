
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int version; } ;
struct TYPE_7__ {TYPE_1__ r_ctx; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_peer_connection_t ;


 int * ngx_http_tfs_select_peer_v1 (TYPE_2__*) ;
 int * ngx_http_tfs_select_peer_v2 (TYPE_2__*) ;

ngx_http_tfs_peer_connection_t *
ngx_http_tfs_select_peer(ngx_http_tfs_t *t)
{
    if (t->r_ctx.version == 1) {
        return ngx_http_tfs_select_peer_v1(t);
    }

    if (t->r_ctx.version == 2) {
        return ngx_http_tfs_select_peer_v2(t);
    }

    return ((void*)0);
}
