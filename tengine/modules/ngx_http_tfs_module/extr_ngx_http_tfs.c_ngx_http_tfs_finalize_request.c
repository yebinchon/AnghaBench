
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_28__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_17__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_31__ {TYPE_28__* connection; int data; int (* free ) (TYPE_12__*,int ,int ) ;} ;
typedef TYPE_12__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_45__ {scalar_t__ code; } ;
struct TYPE_29__ {TYPE_9__ action; } ;
struct TYPE_44__ {TYPE_7__* segment_data; } ;
struct TYPE_40__ {scalar_t__ size; } ;
struct TYPE_32__ {scalar_t__ sp_curr; size_t tfs_peer_count; scalar_t__ json_output; int (* finalize_request ) (TYPE_13__*) ;TYPE_10__ r_ctx; int (* sp_callback ) (TYPE_13__*) ;TYPE_20__* log; TYPE_17__* parent; TYPE_8__ file; TYPE_4__ stat_info; struct TYPE_32__* next; TYPE_2__* main_conf; TYPE_1__* tfs_peer_servers; void* sp_ready; int sp_fail_count; } ;
typedef TYPE_13__ ngx_http_tfs_t ;
struct TYPE_33__ {TYPE_11__* connection; int write_event_handler; } ;
typedef TYPE_14__ ngx_http_request_t ;
struct TYPE_42__ {scalar_t__ size; } ;
struct TYPE_43__ {TYPE_6__ segment_info; } ;
struct TYPE_41__ {int left_length; } ;
struct TYPE_39__ {int size; } ;
struct TYPE_38__ {int conn_pool; } ;
struct TYPE_37__ {scalar_t__ fd; scalar_t__ pool; } ;
struct TYPE_36__ {char* action; } ;
struct TYPE_35__ {TYPE_12__ peer; } ;
struct TYPE_34__ {scalar_t__ sp_curr; scalar_t__ sp_done_count; scalar_t__ sp_count; int (* sp_callback ) (TYPE_17__*) ;void* request_timeout; int sp_fail_count; TYPE_5__ file; TYPE_3__ stat_info; int sp_succ_count; } ;
struct TYPE_30__ {TYPE_20__* log; } ;


 scalar_t__ NGX_DONE ;
 int NGX_HTTP_LAST ;
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ;
 scalar_t__ NGX_HTTP_TFS_ACTION_KEEPALIVE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_READ_FILE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_WRITE_FILE ;
 void* NGX_HTTP_TFS_YES ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_close_connection (TYPE_28__*) ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_http_connection_pool_check (int ,TYPE_20__*) ;
 int ngx_http_finalize_request (TYPE_14__*,scalar_t__) ;
 int ngx_http_request_empty_handler ;
 scalar_t__ ngx_http_send_special (TYPE_14__*,int ) ;
 int ngx_http_tfs_free_st (TYPE_13__*) ;
 int ngx_http_tfs_json_destroy (scalar_t__) ;
 int ngx_log_debug1 (int ,TYPE_20__*,int ,char*,scalar_t__) ;
 int ngx_log_debug2 (int ,TYPE_20__*,int ,char*,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_12__*,int ,int ) ;
 int stub2 (TYPE_12__*,int ,int ) ;
 int stub3 (TYPE_17__*) ;
 int stub4 (TYPE_13__*) ;
 int stub5 (TYPE_13__*) ;

void
ngx_http_tfs_finalize_request(ngx_http_request_t *r, ngx_http_tfs_t *t,
    ngx_int_t rc)
{
    ngx_uint_t i;
    ngx_http_tfs_t *next_st;
    ngx_peer_connection_t *p;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "finalize http tfs request: %i", rc);

    if (t->parent
        && t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE
        && t->parent->sp_curr != t->sp_curr)
    {
        if (rc != NGX_DONE) {
            t->sp_fail_count++;
        }

        t->sp_ready = NGX_HTTP_TFS_YES;
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "curr output segment is [%uD], [%uD] is ready, wait for call...",
                       t->parent->sp_curr, t->sp_curr);
        return;
    }

    for (i = 0; i < t->tfs_peer_count; i++) {
        p = &t->tfs_peer_servers[i].peer;
        if (p->free) {
            p->free(p, p->data, 0);
        }

        if (p->connection) {
            if (p->free) {
                p->free(p, p->data, 0);
            }

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "close http upstream connection: %d",
                           p->connection->fd);

            if (p->connection->pool) {
                ngx_destroy_pool(p->connection->pool);
            }

            ngx_close_connection(p->connection);
        }

        p->connection = ((void*)0);
    }





    if (t->parent) {

        next_st = t->next;
        ngx_http_tfs_free_st(t);

        r->write_event_handler = ngx_http_request_empty_handler;

        if (rc == NGX_DONE) {
            t->parent->sp_succ_count++;
            t->parent->stat_info.size += t->stat_info.size;
            if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
                t->parent->file.left_length -=
                                        t->file.segment_data->segment_info.size;
            }

        } else {
            t->parent->sp_fail_count++;
            if (rc == NGX_HTTP_REQUEST_TIME_OUT) {
                t->parent->request_timeout = NGX_HTTP_TFS_YES;
            }
        }
        t->parent->sp_done_count++;
        t->parent->sp_curr++;

        if (t->parent->sp_done_count == t->parent->sp_count){
            t->parent->sp_callback(t->parent);

        } else {
            if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE) {

                ngx_log_debug1(NGX_LOG_DEBUG_HTTP, t->log, 0,
                               "segment[%uD] output complete, call next...",
                               t->sp_curr);
                if (next_st) {
                    next_st->sp_callback(next_st);
                }
            }
        }

        return;
    }


    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        t->finalize_request(t);
        return;
    }

    if (t->json_output) {
        ngx_http_tfs_json_destroy(t->json_output);
    }

    r->connection->log->action = "sending to client";
    if (rc == NGX_OK) {
        rc = ngx_http_send_special(r, NGX_HTTP_LAST);
    }

    ngx_http_finalize_request(r, rc);
}
