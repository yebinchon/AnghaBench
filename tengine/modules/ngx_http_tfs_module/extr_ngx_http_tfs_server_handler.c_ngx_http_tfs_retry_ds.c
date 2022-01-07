
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
typedef struct TYPE_19__ TYPE_11__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_23__ {size_t segment_index; int left_length; TYPE_8__* segment_data; } ;
struct TYPE_20__ {int code; } ;
struct TYPE_21__ {int is_raw_update; TYPE_1__ action; } ;
struct TYPE_26__ {scalar_t__ (* retry_handler ) (TYPE_7__*) ;int data; int * tfs_peer_servers; int pool; TYPE_9__* tfs_peer; TYPE_6__* recv_chain; int header_buffer; TYPE_4__ file; int state; void* retry_curr_ns; int retry_count; void* use_dedup; void* is_stat_dup_file; TYPE_2__ r_ctx; int is_process_meta_seg; int is_large_file; } ;
typedef TYPE_7__ ngx_http_tfs_t ;
struct TYPE_22__ {int size; int crc; int file_id; int block_id; } ;
struct TYPE_27__ {scalar_t__ ds_retry; int oper_size; int oper_offset; TYPE_3__ segment_info; int orig_data; int * data; int write_file_number; } ;
typedef TYPE_8__ ngx_http_tfs_segment_data_t ;
struct TYPE_19__ {int data; int (* free ) (TYPE_11__*,int ,int ) ;} ;
struct TYPE_28__ {int body_buffer; TYPE_11__ peer; } ;
typedef TYPE_9__ ngx_http_tfs_peer_connection_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_25__ {TYPE_5__* next; int * buf; } ;
struct TYPE_24__ {int * buf; } ;


 scalar_t__ NGX_ERROR ;




 size_t NGX_HTTP_TFS_DATA_SERVER ;
 scalar_t__ NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND ;
 int NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 int NGX_HTTP_TFS_MAX_RETRY_COUNT ;
 void* NGX_HTTP_TFS_NO ;
 int NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS ;
 int NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;
 void* NGX_HTTP_TFS_YES ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_chain_add_copy_with_buf (int ,int **,int ) ;
 int ngx_http_tfs_connect (TYPE_7__*) ;
 int ngx_http_tfs_peer_set_addr (int ,int *,int *) ;
 scalar_t__ ngx_http_tfs_reinit (int ,TYPE_7__*) ;
 int * ngx_http_tfs_select_data_server (TYPE_7__*,TYPE_8__*) ;
 TYPE_9__* ngx_http_tfs_select_peer (TYPE_7__*) ;
 int ngx_min (int ,int ) ;
 int stub1 (TYPE_11__*,int ,int ) ;
 scalar_t__ stub2 (TYPE_7__*) ;

ngx_int_t
ngx_http_tfs_retry_ds(ngx_http_tfs_t *t)
{
    ngx_int_t rc;
    ngx_http_tfs_inet_t *addr;
    ngx_http_tfs_segment_data_t *segment_data;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;
    tp->peer.free(&tp->peer, tp->peer.data, 0);

    segment_data = &t->file.segment_data[t->file.segment_index];
    addr = ngx_http_tfs_select_data_server(t, segment_data);
    if (addr == ((void*)0)) {
        switch(t->r_ctx.action.code) {
        case 129:
            t->state = NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO;
            break;
        case 131:
            t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;
            break;
        case 130:
            if (t->is_large_file && t->is_process_meta_seg) {
                return NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND;
            }


            return NGX_ERROR;
        case 128:

            if (t->r_ctx.is_raw_update) {
                return NGX_ERROR;
            }




            if (t->is_stat_dup_file) {
                t->is_stat_dup_file = NGX_HTTP_TFS_NO;
                t->use_dedup = NGX_HTTP_TFS_NO;
                t->state = NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS;
                t->file.segment_data[0].segment_info.block_id = 0;
                t->file.segment_data[0].segment_info.file_id = 0;
                t->retry_curr_ns = NGX_HTTP_TFS_YES;

            } else {

                if (++t->retry_count <= NGX_HTTP_TFS_MAX_RETRY_COUNT) {
                    t->retry_curr_ns = NGX_HTTP_TFS_YES;
                }
                t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
                segment_data->segment_info.block_id = 0;
                segment_data->segment_info.file_id = 0;
                segment_data->write_file_number = 0;
                segment_data->segment_info.crc = 0;

                segment_data->data = ((void*)0);
                rc = ngx_chain_add_copy_with_buf(t->pool,
                    &segment_data->data, segment_data->orig_data);
                if (rc == NGX_ERROR) {
                    return NGX_ERROR;
                }

                t->file.left_length = segment_data->segment_info.size;
                segment_data->oper_offset = 0;
                segment_data->oper_size = ngx_min(t->file.left_length,
                                                  NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
            }
            break;
        default:
            return NGX_ERROR;
        }

        t->tfs_peer = ngx_http_tfs_select_peer(t);
        if (t->tfs_peer == ((void*)0)) {
            return NGX_ERROR;
        }

        t->recv_chain->buf = &t->header_buffer;
        t->recv_chain->next->buf = &t->tfs_peer->body_buffer;


        segment_data->ds_retry = 0;

        if (t->retry_handler == ((void*)0)) {
            return NGX_ERROR;
        }

        return t->retry_handler(t);
    }

    ngx_http_tfs_peer_set_addr(t->pool,
                               &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER],
                               addr);

    if (ngx_http_tfs_reinit(t->data, t) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_http_tfs_connect(t);

    return NGX_OK;
}
