
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int ngx_int_t ;
struct TYPE_40__ {size_t segment_index; scalar_t__ left_length; int file_hole_size; int file_offset; TYPE_9__* segment_data; } ;
struct TYPE_38__ {int save_body_buffer; } ;
struct TYPE_37__ {scalar_t__ size; } ;
struct TYPE_34__ {int code; } ;
struct TYPE_36__ {int version; int read_stat_type; int chk_exist; TYPE_1__ action; } ;
struct TYPE_35__ {int size; } ;
struct TYPE_41__ {void* read_ver; int header_size; TYPE_7__ file; TYPE_6__* tfs_peer; TYPE_5__ dedup_ctx; int use_dedup; int is_large_file; TYPE_10__* meta_segment_data; int free_bufs; int pool; TYPE_4__ file_stat; int state; TYPE_3__ r_ctx; TYPE_2__ stat_info; int parent; int is_process_meta_seg; int * json_output; int log; } ;
typedef TYPE_8__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_segment_head_t ;
struct TYPE_42__ {int oper_size; } ;
typedef TYPE_9__ ngx_http_tfs_segment_data_t ;
typedef int ngx_http_tfs_ds_read_response_t ;
struct TYPE_33__ {int * buf; } ;
typedef TYPE_10__ ngx_chain_t ;
struct TYPE_39__ {int body_buffer; } ;


 int NGX_ERROR ;




 scalar_t__ NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 scalar_t__ NGX_HTTP_TFS_MAX_SIZE ;
 int NGX_HTTP_TFS_NO ;
 void* NGX_HTTP_TFS_READ ;
 int NGX_HTTP_TFS_READ_STAT_FORCE ;
 void* NGX_HTTP_TFS_READ_V2 ;
 TYPE_10__* ngx_http_tfs_chain_get_free_buf (int ,int *,scalar_t__) ;
 TYPE_10__* ngx_http_tfs_create_closefile_message (TYPE_8__*,TYPE_9__*) ;
 TYPE_10__* ngx_http_tfs_create_createfile_message (TYPE_8__*,TYPE_9__*) ;
 TYPE_10__* ngx_http_tfs_create_read_message (TYPE_8__*,TYPE_9__*,void*,int ) ;
 TYPE_10__* ngx_http_tfs_create_stat_message (TYPE_8__*,TYPE_9__*) ;
 TYPE_10__* ngx_http_tfs_create_unlink_message (TYPE_8__*,TYPE_9__*) ;
 TYPE_10__* ngx_http_tfs_create_write_message (TYPE_8__*,TYPE_9__*) ;
 int ngx_http_tfs_fill_file_hole (TYPE_8__*,int ) ;
 int * ngx_http_tfs_json_init (int ,int ) ;

ngx_chain_t *
ngx_http_tfs_data_server_create_message(ngx_http_tfs_t *t)
{
    uint32_t meta_segment_size;
    uint16_t action;
    ngx_int_t rc;
    ngx_chain_t *cl;
    ngx_http_tfs_segment_data_t *segment_data;

    cl = ((void*)0);
    meta_segment_size = 0;
    action = t->r_ctx.action.code;
    segment_data = &t->file.segment_data[t->file.segment_index];

    switch (action) {
    case 137:
        if (t->r_ctx.chk_exist == NGX_HTTP_TFS_NO) {
            t->json_output = ngx_http_tfs_json_init(t->log, t->pool);
            if (t->json_output == ((void*)0)) {
                return ((void*)0);
            }
        }
        if (t->is_large_file) {
            segment_data->oper_size = sizeof(ngx_http_tfs_segment_head_t);
            return ngx_http_tfs_create_read_message(t, segment_data,
                            NGX_HTTP_TFS_READ_V2, NGX_HTTP_TFS_READ_STAT_FORCE);
        }

        return ngx_http_tfs_create_stat_message(t, segment_data);

    case 139:
        t->read_ver = NGX_HTTP_TFS_READ;
        t->header_size = sizeof(ngx_http_tfs_ds_read_response_t);

        if (t->is_large_file && t->is_process_meta_seg) {
            if (t->meta_segment_data == ((void*)0)) {

                cl = ngx_http_tfs_chain_get_free_buf(t->pool, &t->free_bufs,
                    NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
                if (cl == ((void*)0)) {
                    return ((void*)0);
                }
                t->tfs_peer->body_buffer = *(cl->buf);
                t->meta_segment_data = cl;
            }
        }



        if (t->r_ctx.version == 1
            && t->file.file_offset == 0
            && !t->parent)
        {
            t->read_ver = NGX_HTTP_TFS_READ_V2;
        }

        if (t->r_ctx.version == 2 && t->file.file_hole_size > 0) {
            rc = ngx_http_tfs_fill_file_hole(t, t->file.file_hole_size);
            if (rc == NGX_ERROR) {
                return ((void*)0);
            }
            t->stat_info.size += t->file.file_hole_size;
            t->file.file_hole_size = 0;
        }
        return ngx_http_tfs_create_read_message(t, segment_data,
                                                t->read_ver,
                                                t->r_ctx.read_stat_type);
    case 136:
        switch(t->state) {
        case 129:
            return ngx_http_tfs_create_stat_message(t, segment_data);
        case 131:
            return ngx_http_tfs_create_createfile_message(t, segment_data);
        case 128:
            return ngx_http_tfs_create_write_message(t, segment_data);
        case 132:
            return ngx_http_tfs_create_closefile_message(t, segment_data);
        case 130:
            return ngx_http_tfs_create_unlink_message(t, segment_data);
        default:
            return ((void*)0);
        }

    case 138:
        switch(t->state) {
        case 133:
            return ngx_http_tfs_create_stat_message(t, segment_data);

        case 134:
            t->read_ver = NGX_HTTP_TFS_READ;
            if (t->meta_segment_data == ((void*)0)) {
                if (t->use_dedup) {
                    meta_segment_size = t->file_stat.size;
                    t->file.left_length = t->file_stat.size;
                }



                if (t->is_large_file) {
                    meta_segment_size = NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
                    t->file.left_length = NGX_HTTP_TFS_MAX_SIZE;
                }
                cl = ngx_http_tfs_chain_get_free_buf(t->pool, &t->free_bufs,
                    meta_segment_size);
                if (cl == ((void*)0)) {
                    return ((void*)0);
                }
                t->meta_segment_data = cl;


                if (!t->is_large_file && t->use_dedup) {
                    t->dedup_ctx.save_body_buffer = t->tfs_peer->body_buffer;
                }

                t->tfs_peer->body_buffer = *(cl->buf);
            }
            t->header_size = sizeof(ngx_http_tfs_ds_read_response_t);


            if (t->file.left_length == NGX_HTTP_TFS_MAX_SIZE) {
                t->read_ver = NGX_HTTP_TFS_READ_V2;
            }
            return ngx_http_tfs_create_read_message(t, segment_data,
                                     t->read_ver, NGX_HTTP_TFS_READ_STAT_FORCE);
        case 135:
            return ngx_http_tfs_create_unlink_message(t, segment_data);

        default:
            return ((void*)0);
        }
    }

    return cl;
}
