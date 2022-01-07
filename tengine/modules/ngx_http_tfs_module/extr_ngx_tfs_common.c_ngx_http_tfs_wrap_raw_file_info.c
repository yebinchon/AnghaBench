
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int crc; int flag; int create_time; int modify_time; int u_size; int size; int offset; int id; } ;
typedef TYPE_1__ ngx_http_tfs_raw_file_stat_t ;
struct TYPE_6__ {int crc; int flag; int create_time; int modify_time; int u_size; int size; int offset; int id; } ;
typedef TYPE_2__ ngx_http_tfs_raw_file_info_t ;



void
ngx_http_tfs_wrap_raw_file_info(ngx_http_tfs_raw_file_info_t *file_info,
    ngx_http_tfs_raw_file_stat_t *file_stat)
{
    if (file_info != ((void*)0) && file_stat != ((void*)0)) {
        file_stat->id = file_info->id;
        file_stat->offset = file_info->offset;
        file_stat->size = file_info->size;
        file_stat->u_size = file_info->u_size;
        file_stat->modify_time = file_info->modify_time;
        file_stat->create_time = file_info->create_time;
        file_stat->flag = file_info->flag;
        file_stat->crc = file_info->crc;
    }
}
