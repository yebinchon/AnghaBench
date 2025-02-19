
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
typedef int ngx_int_t ;
struct TYPE_12__ {int version; } ;
struct TYPE_18__ {int tfs_peer_count; int log; TYPE_1__ r_ctx; TYPE_5__* loc_conf; TYPE_8__* tfs_peer_servers; int pool; TYPE_2__* main_conf; } ;
typedef TYPE_7__ ngx_http_tfs_t ;
struct TYPE_17__ {void* log_error; int free; int get; TYPE_9__* data; int * name; int log; scalar_t__ sockaddr; int socklen; } ;
struct TYPE_19__ {TYPE_6__ peer; int peer_addr_text; } ;
typedef TYPE_8__ ngx_http_tfs_peer_connection_t ;
struct TYPE_20__ {int free_peer; int get_peer; } ;
typedef TYPE_9__ ngx_http_connection_pool_t ;
struct TYPE_16__ {TYPE_4__* upstream; } ;
struct TYPE_15__ {TYPE_3__* ups_addr; scalar_t__ enable_rcs; } ;
struct TYPE_14__ {int socklen; scalar_t__ sockaddr; } ;
struct TYPE_13__ {TYPE_9__* conn_pool; } ;


 int NGX_ERROR ;
 void* NGX_ERROR_ERR ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 size_t NGX_HTTP_TFS_RC_SERVER ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 int NGX_HTTP_TFS_SERVER_COUNT ;
 int NGX_OK ;
 int ds_name ;
 char* inet_ntoa (int ) ;
 int ms_name ;
 TYPE_8__* ngx_pcalloc (int ,int) ;
 int ngx_sprintf (int ,char*,char*,int ) ;
 int ns_name ;
 int ntohs (int ) ;
 int rcs_name ;
 int rs_name ;

ngx_int_t
ngx_http_tfs_peer_init(ngx_http_tfs_t *t)
{
    char *addr;
    uint16_t port;
    ngx_http_connection_pool_t *conn_pool;
    ngx_http_tfs_peer_connection_t *rc_server, *name_server, *root_server,
                                    *meta_server, *data_server;

    conn_pool = t->main_conf->conn_pool;

    t->tfs_peer_servers = ngx_pcalloc(t->pool,
        sizeof(ngx_http_tfs_peer_connection_t) * NGX_HTTP_TFS_SERVER_COUNT);
    if (t->tfs_peer_servers == ((void*)0)) {
        return NGX_ERROR;
    }

    name_server = &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];
    data_server = &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];
    root_server = &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];
    meta_server = &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];


    if (t->loc_conf->upstream->enable_rcs) {
        rc_server = &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];
        rc_server->peer.sockaddr = t->loc_conf->upstream->ups_addr->sockaddr;
        rc_server->peer.socklen = t->loc_conf->upstream->ups_addr->socklen;
        rc_server->peer.log = t->log;
        rc_server->peer.name = &rcs_name;
        rc_server->peer.data = conn_pool;
        rc_server->peer.get = conn_pool->get_peer;
        rc_server->peer.free = conn_pool->free_peer;
        rc_server->peer.log_error = NGX_ERROR_ERR;
        addr = inet_ntoa(((struct sockaddr_in*)
                          (rc_server->peer.sockaddr))->sin_addr);
        port = ntohs(((struct sockaddr_in*)
                      (rc_server->peer.sockaddr))->sin_port);
        ngx_sprintf(rc_server->peer_addr_text, "%s:%d", addr, port);

    } else {
        name_server->peer.sockaddr = t->loc_conf->upstream->ups_addr->sockaddr;
        name_server->peer.socklen = t->loc_conf->upstream->ups_addr->socklen;
        addr = inet_ntoa(((struct sockaddr_in*)
                          (name_server->peer.sockaddr))->sin_addr);
        port = ntohs(((struct sockaddr_in*)
                      (name_server->peer.sockaddr))->sin_port);
        ngx_sprintf(name_server->peer_addr_text, "%s:%d", addr, port);
    }


    name_server->peer.log = t->log;
    name_server->peer.name = &ns_name;
    name_server->peer.data = conn_pool;
    name_server->peer.get = conn_pool->get_peer;
    name_server->peer.free = conn_pool->free_peer;
    name_server->peer.log_error = NGX_ERROR_ERR;


    data_server->peer.log = t->log;
    data_server->peer.name = &ds_name;
    data_server->peer.data = conn_pool;
    data_server->peer.get = conn_pool->get_peer;
    data_server->peer.free = conn_pool->free_peer;
    data_server->peer.log_error = NGX_ERROR_ERR;

    if (t->r_ctx.version == 1) {
        t->tfs_peer_count = 3;

    } else {

        root_server->peer.log = t->log;
        root_server->peer.name = &rs_name;
        root_server->peer.data = conn_pool;
        root_server->peer.get = conn_pool->get_peer;
        root_server->peer.free = conn_pool->free_peer;
        root_server->peer.log_error = NGX_ERROR_ERR;


        meta_server->peer.log = t->log;
        meta_server->peer.name = &ms_name;
        meta_server->peer.data = conn_pool;
        meta_server->peer.get = conn_pool->get_peer;
        meta_server->peer.free = conn_pool->free_peer;
        meta_server->peer.log_error = NGX_ERROR_ERR;

        t->tfs_peer_count = 5;
    }

    return NGX_OK;
}
