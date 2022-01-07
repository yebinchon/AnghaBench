
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_35__ {size_t segment_index; size_t curr_batch_count; scalar_t__ left_length; scalar_t__ file_hole_size; size_t segment_count; scalar_t__ file_offset; TYPE_11__* segment_data; } ;
struct TYPE_32__ {scalar_t__ code; } ;
struct TYPE_33__ {int version; TYPE_6__ action; } ;
struct TYPE_31__ {scalar_t__ size; } ;
struct TYPE_29__ {TYPE_10__* data; } ;
struct TYPE_30__ {TYPE_3__ remote_ctx; } ;
struct TYPE_23__ {size_t sp_curr; struct TYPE_23__* next; TYPE_9__ file; scalar_t__ sp_count; TYPE_13__* tfs_peer; TYPE_2__* recv_chain; int header_buffer; int data; int log; int pool; TYPE_12__* tfs_peer_servers; int state; TYPE_7__ r_ctx; TYPE_5__ stat_info; int sp_ready; TYPE_4__ block_cache_ctx; int * out_bufs; int * request_bufs; int sp_callback; scalar_t__ sp_succ_count; scalar_t__ sp_fail_count; scalar_t__ sp_done_count; } ;
typedef TYPE_10__ ngx_http_tfs_t ;
struct TYPE_34__ {scalar_t__ size; scalar_t__ offset; int block_id; } ;
struct TYPE_24__ {scalar_t__ oper_offset; scalar_t__ oper_size; TYPE_8__ segment_info; } ;
typedef TYPE_11__ ngx_http_tfs_segment_data_t ;
struct TYPE_25__ {int peer_addr_text; } ;
typedef TYPE_12__ ngx_http_tfs_peer_connection_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_28__ {TYPE_1__* next; int * buf; } ;
struct TYPE_27__ {int * buf; } ;
struct TYPE_26__ {int body_buffer; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_ACTION_READ_FILE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_WRITE_FILE ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 int NGX_HTTP_TFS_NO ;
 int NGX_HTTP_TFS_STATE_READ_READ_DATA ;
 int NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_10__* ngx_http_tfs_alloc_st (TYPE_10__*) ;
 int ngx_http_tfs_batch_process_end ;
 int ngx_http_tfs_batch_process_next ;
 int ngx_http_tfs_connect (TYPE_10__*) ;
 int ngx_http_tfs_peer_set_addr (int ,TYPE_12__*,int *) ;
 scalar_t__ ngx_http_tfs_reinit (int ,TYPE_10__*) ;
 int * ngx_http_tfs_select_data_server (TYPE_10__*,TYPE_11__*) ;
 TYPE_13__* ngx_http_tfs_select_peer (TYPE_10__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;
 scalar_t__ ngx_min (scalar_t__,int ) ;

ngx_int_t
ngx_http_tfs_batch_process_start(ngx_http_tfs_t *t)
{
    uint32_t i;
    ngx_http_tfs_t *st, **tt;
    ngx_http_tfs_inet_t *addr;
    ngx_http_tfs_segment_data_t *segment_data;
    ngx_http_tfs_peer_connection_t *data_server;

    segment_data = &t->file.segment_data[t->file.segment_index];

    t->sp_count = 0;
    t->sp_done_count = 0;
    t->sp_fail_count = 0;
    t->sp_succ_count = 0;
    t->sp_curr = t->file.segment_index;
    t->sp_callback = ngx_http_tfs_batch_process_end;
    tt = &t->next;


    for (i = 0; i < t->file.curr_batch_count; i++) {
        st = ngx_http_tfs_alloc_st(t);
        if (st == ((void*)0)) {
            return NGX_ERROR;
        }

        st->sp_callback = ngx_http_tfs_batch_process_next;


        st->request_bufs = ((void*)0);
        st->out_bufs = ((void*)0);


        st->block_cache_ctx.remote_ctx.data = st;


        st->file.segment_index = 0;
        st->file.segment_data = &segment_data[i];
        st->sp_curr = t->file.segment_index + i;
        st->sp_ready = NGX_HTTP_TFS_NO;
        st->stat_info.size = 0;

        if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
            st->file.left_length = st->file.segment_data->segment_info.size;
            st->state = NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME;

        } else if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE) {

            if (t->r_ctx.version == 2) {
                st->file.file_hole_size = 0;
                if (i < t->file.segment_count
                   && (t->file.file_offset
                       < segment_data[i].segment_info.offset))
                {
                    st->file.file_hole_size = ngx_min(t->file.left_length,
                        (uint64_t)(segment_data[i].segment_info.offset
                                   - t->file.file_offset));
                    t->file.file_offset += st->file.file_hole_size;
                    t->file.left_length -= st->file.file_hole_size;
                    ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                                  "find file hole, size: %uL",
                                  st->file.file_hole_size);
                }
            }
            st->file.file_offset = st->file.segment_data->oper_offset;
            st->file.left_length = st->file.segment_data->oper_size;
            t->file.file_offset += st->file.segment_data->oper_size;
            t->file.left_length -= st->file.segment_data->oper_size;

            st->state = NGX_HTTP_TFS_STATE_READ_READ_DATA;
        }


        addr = ngx_http_tfs_select_data_server(st, st->file.segment_data);
        if (addr == ((void*)0)) {
            return NGX_ERROR;
        }

        data_server = &st->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];
        ngx_http_tfs_peer_set_addr(t->pool, data_server, addr);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "block_id: %uD, select data server: %s",
                       st->file.segment_data->segment_info.block_id,
                       data_server->peer_addr_text);

        if (ngx_http_tfs_reinit(t->data, st) != NGX_OK) {
            return NGX_ERROR;
        }

        st->tfs_peer = ngx_http_tfs_select_peer(st);
        if (st->tfs_peer == ((void*)0)) {
            return NGX_ERROR;
        }

        st->recv_chain->buf = &st->header_buffer;
        st->recv_chain->next->buf = &st->tfs_peer->body_buffer;

        *tt = st;
        tt = &st->next;

        t->sp_count++;

        if (t->file.left_length == 0) {
            break;
        }
    }
    *tt = ((void*)0);


    for (st = t->next; st; st = t->next) {

        t->next = st->next;
        ngx_http_tfs_connect(st);
    }

    return NGX_OK;
}
