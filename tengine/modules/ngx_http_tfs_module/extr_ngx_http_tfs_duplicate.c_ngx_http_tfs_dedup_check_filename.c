
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {scalar_t__ block_id; scalar_t__ seq_id; scalar_t__ suffix; } ;
struct TYPE_6__ {scalar_t__ cluster_id; TYPE_1__ file; } ;
typedef TYPE_2__ ngx_http_tfs_raw_fsname_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_tfs_raw_fsname_parse (int *,int *,TYPE_2__*) ;
 int ngx_null_string ;

ngx_int_t
ngx_http_tfs_dedup_check_filename(ngx_str_t *dup_file_name,
    ngx_http_tfs_raw_fsname_t* fsname)
{
    ngx_int_t rc;
    ngx_str_t dup_file_suffix = ngx_null_string;
    ngx_http_tfs_raw_fsname_t dup_fsname;

    rc = ngx_http_tfs_raw_fsname_parse(dup_file_name, &dup_file_suffix,
                                       &dup_fsname);
    if (rc == NGX_OK) {
        if (fsname->cluster_id == dup_fsname.cluster_id
            && fsname->file.block_id == dup_fsname.file.block_id
            && fsname->file.seq_id == dup_fsname.file.seq_id
            && fsname->file.suffix == dup_fsname.file.suffix)
        {
            return NGX_OK;
        }
    }

    return NGX_ERROR;
}
