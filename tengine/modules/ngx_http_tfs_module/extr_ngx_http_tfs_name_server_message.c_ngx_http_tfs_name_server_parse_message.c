
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int code; } ;
struct TYPE_11__ {int version; TYPE_1__ action; } ;
struct TYPE_10__ {size_t segment_index; int * segment_data; } ;
struct TYPE_12__ {int state; int is_process_meta_seg; int is_large_file; TYPE_3__ r_ctx; int is_rolling_back; int parent; TYPE_2__ file; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_segment_data_t ;


 int NGX_ERROR ;




 int NGX_HTTP_TFS_CMD_GET_CLUSTER_ID_NS ;
 int NGX_HTTP_TFS_CMD_GET_GROUP_COUNT ;
 int NGX_HTTP_TFS_CMD_GET_GROUP_SEQ ;







 int ngx_http_tfs_parse_batch_block_info_message (TYPE_4__*,int *) ;
 int ngx_http_tfs_parse_block_info_message (TYPE_4__*,int *) ;
 int ngx_http_tfs_parse_ctl_message (TYPE_4__*,int ) ;

ngx_int_t
ngx_http_tfs_name_server_parse_message(ngx_http_tfs_t *t)
{
    uint16_t action;
    ngx_int_t rc;
    ngx_http_tfs_segment_data_t *segment_data;

    rc = NGX_ERROR;
    action = t->r_ctx.action.code;
    segment_data = &t->file.segment_data[t->file.segment_index];

    switch (action) {
    case 136:
        return ngx_http_tfs_parse_block_info_message(t, segment_data);

    case 138:
        if (!t->parent
            && (t->r_ctx.version == 2
                || (t->is_large_file && !t->is_process_meta_seg)))
        {
            rc = ngx_http_tfs_parse_batch_block_info_message(t, segment_data);

        } else {
            rc = ngx_http_tfs_parse_block_info_message(t, segment_data);
        }
        return rc;

    case 135:
        switch(t->state) {
        case 129:
            return ngx_http_tfs_parse_ctl_message(t,
                NGX_HTTP_TFS_CMD_GET_GROUP_COUNT);

        case 128:
            return ngx_http_tfs_parse_ctl_message(t,
                NGX_HTTP_TFS_CMD_GET_GROUP_SEQ);

        case 131:
            return ngx_http_tfs_parse_ctl_message(t,
                NGX_HTTP_TFS_CMD_GET_CLUSTER_ID_NS);

        case 130:
            if (!t->parent
                && !t->is_rolling_back
                && (t->r_ctx.version == 2
                    || (t->is_large_file && !t->is_process_meta_seg)))
            {
                rc = ngx_http_tfs_parse_batch_block_info_message(t,
                                                                 segment_data);

            } else {
                rc = ngx_http_tfs_parse_block_info_message(t, segment_data);
            }
        }
        return rc;

    case 137:
        switch(t->state) {
        case 133:
            rc = ngx_http_tfs_parse_ctl_message(t,
                                              NGX_HTTP_TFS_CMD_GET_GROUP_COUNT);
            return rc;

        case 132:
            rc = ngx_http_tfs_parse_ctl_message(t,
                                                NGX_HTTP_TFS_CMD_GET_GROUP_SEQ);
            return rc;

        case 134:
            return ngx_http_tfs_parse_block_info_message(t, segment_data);

        default:
            break;
        }
    }

    return NGX_ERROR;
}
