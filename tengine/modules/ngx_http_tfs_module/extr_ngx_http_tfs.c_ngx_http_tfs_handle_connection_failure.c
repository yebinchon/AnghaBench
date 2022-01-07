
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct TYPE_23__ {TYPE_3__* name; TYPE_8__* connection; TYPE_7__* data; } ;
typedef TYPE_4__ ngx_peer_connection_t ;
struct TYPE_21__ {size_t segment_index; int * segment_data; } ;
struct TYPE_24__ {int log; TYPE_2__ file; TYPE_1__* loc_conf; int * tfs_peer_servers; int pool; int state; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
struct TYPE_25__ {TYPE_4__ peer; } ;
typedef TYPE_6__ ngx_http_tfs_peer_connection_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_26__ {int count; } ;
typedef TYPE_7__ ngx_http_connection_pool_t ;
struct TYPE_27__ {scalar_t__ pool; int fd; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_28__ {int data; } ;
struct TYPE_22__ {int len; int data; } ;
struct TYPE_20__ {int meta_root_server; } ;
struct TYPE_19__ {int data; } ;
struct TYPE_18__ {int data; } ;


 int NGX_HTTP_TFS_AGAIN ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 int NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_WARN ;
 int NGX_OK ;
 TYPE_17__ ds_name ;
 TYPE_16__ ms_name ;
 int ngx_close_connection (TYPE_8__*) ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_http_tfs_finalize_state (TYPE_5__*,int ) ;
 int ngx_http_tfs_peer_set_addr (int ,int *,int *) ;
 int ngx_http_tfs_remove_block_cache (TYPE_5__*,int *) ;
 int ngx_http_tfs_select_rc_server (TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_strcmp (int ,int ) ;
 scalar_t__ ngx_strncmp (int ,int ,int ) ;
 TYPE_9__ rcs_name ;

__attribute__((used)) static void
ngx_http_tfs_handle_connection_failure(ngx_http_tfs_t *t,
    ngx_http_tfs_peer_connection_t *tp)
{
    ngx_connection_t *c;
    ngx_peer_connection_t *p;




    p = &tp->peer;
    c = p->connection;
    if (c != ((void*)0)) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "close http upstream connection: %d",
                       c->fd);

        if (c->pool) {
            ngx_destroy_pool(c->pool);
        }

        ngx_close_connection(c);
    }
    p->connection = ((void*)0);


    if (ngx_strcmp(p->name->data, ms_name.data) == 0) {
        t->state = NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE;
        ngx_http_tfs_peer_set_addr(t->pool,
                         &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER],
                         (ngx_http_tfs_inet_t *)&t->loc_conf->meta_root_server);
        ngx_http_tfs_finalize_state(t, NGX_OK);
        return;
    }


    if (ngx_strcmp(p->name->data, ds_name.data) == 0) {
        ngx_http_tfs_remove_block_cache(t,
                                  &t->file.segment_data[t->file.segment_index]);
    }


    if (ngx_strncmp(p->name->data, rcs_name.data, p->name->len) == 0) {
        ngx_log_error(NGX_LOG_WARN, t->log, 0,
                "select a new rc server");
        ngx_http_tfs_select_rc_server(t);
    }

    ngx_http_tfs_finalize_state(t, NGX_HTTP_TFS_AGAIN);
}
