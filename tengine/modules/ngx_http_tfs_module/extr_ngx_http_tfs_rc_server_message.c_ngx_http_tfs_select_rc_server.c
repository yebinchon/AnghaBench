
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_2__ sin_addr; } ;
struct TYPE_11__ {scalar_t__ rc_servers_count; scalar_t__ rcserver_index; int * rc_servers; TYPE_1__* ups_addr; } ;
typedef TYPE_4__ ngx_http_tfs_upstream_t ;
struct TYPE_12__ {TYPE_3__* loc_conf; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
struct TYPE_13__ {int port; int ip; } ;
typedef TYPE_6__ ngx_http_tfs_inet_t ;
struct TYPE_10__ {TYPE_4__* upstream; } ;
struct TYPE_8__ {scalar_t__ sockaddr; } ;


 int htons (int ) ;

void
ngx_http_tfs_select_rc_server(ngx_http_tfs_t *t)
{
    struct sockaddr_in *addr_in;
    ngx_http_tfs_inet_t *addr;
    ngx_http_tfs_upstream_t *upstream;

    upstream = t->loc_conf->upstream;

    if (upstream->rc_servers_count == 0) {
        return;
    }

    if (++upstream->rcserver_index >= upstream->rc_servers_count) {
        upstream->rcserver_index = 0;
    }

    addr_in = (struct sockaddr_in *)upstream->ups_addr->sockaddr;
    addr = (ngx_http_tfs_inet_t*)&upstream->rc_servers[upstream->rcserver_index];
    addr_in->sin_addr.s_addr = addr->ip;
    addr_in->sin_port = htons(addr->port);
}
