
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_4__ {int crc; int size; int offset; int file_id; int block_id; } ;
struct TYPE_5__ {int oper_size; int oper_offset; TYPE_1__ segment_info; } ;
typedef TYPE_2__ ngx_http_tfs_segment_data_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug7 (int ,int *,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;

void
ngx_http_tfs_dump_segment_data(ngx_http_tfs_segment_data_t *segment,
    ngx_log_t *log)
{
    ngx_log_debug7(NGX_LOG_DEBUG_HTTP, log, 0,
                   "=========dump segment data=========\n"
                   "block id: %uD, file id: %uL, "
                   "offset: %L, size: %uL, crc: %uD, "
                   "oper_offset: %uD, oper_size: %uL",
                   segment->segment_info.block_id,
                   segment->segment_info.file_id,
                   segment->segment_info.offset,
                   segment->segment_info.size,
                   segment->segment_info.crc,
                   segment->oper_offset,
                   segment->oper_size);
}
