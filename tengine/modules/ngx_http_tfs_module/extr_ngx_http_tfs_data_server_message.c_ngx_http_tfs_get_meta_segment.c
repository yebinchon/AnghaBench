
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_10__ {int suffix; int seq_id; int block_id; } ;
struct TYPE_15__ {TYPE_2__ file; } ;
struct TYPE_11__ {TYPE_7__ fsname; } ;
struct TYPE_9__ {int segment_count; TYPE_6__* segment_data; } ;
struct TYPE_12__ {TYPE_3__ r_ctx; int log; TYPE_1__ file; int pool; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_13__ {int file_id; int block_id; scalar_t__ size; scalar_t__ offset; } ;
typedef TYPE_5__ ngx_http_tfs_segment_info_t ;
typedef int ngx_http_tfs_segment_data_t ;
struct TYPE_14__ {TYPE_5__ segment_info; } ;


 int NGX_ERROR ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_http_tfs_raw_fsname_get_file_id (TYPE_7__) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,int ,int ) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_tfs_get_meta_segment(ngx_http_tfs_t *t)
{
    ngx_http_tfs_segment_info_t *segment_info;

    t->file.segment_count = 1;

    if (t->file.segment_data == ((void*)0)) {
        t->file.segment_data = ngx_pcalloc(t->pool,
                                           sizeof(ngx_http_tfs_segment_data_t));
        if (t->file.segment_data == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    segment_info = &t->file.segment_data[0].segment_info;
    segment_info->block_id = t->r_ctx.fsname.file.block_id;
    segment_info->file_id =
                           ngx_http_tfs_raw_fsname_get_file_id(t->r_ctx.fsname);
    segment_info->offset = 0;
    segment_info->size = 0;

    ngx_log_error(NGX_LOG_INFO, t->log, 0,
                  "meta segment: block_id: %uD, fileid: %uL, "
                  "seq_id: %uD, suffix: %uD",
                  segment_info->block_id,
                  segment_info->file_id,
                  t->r_ctx.fsname.file.seq_id,
                  t->r_ctx.fsname.file.suffix);

    return NGX_OK;
}
