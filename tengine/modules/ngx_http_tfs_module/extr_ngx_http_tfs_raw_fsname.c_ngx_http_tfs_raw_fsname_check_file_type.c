
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* data; scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_http_tfs_raw_file_type_e ;


 scalar_t__ NGX_HTTP_TFS_FILE_NAME_LEN ;
 int NGX_HTTP_TFS_INVALID_FILE_TYPE ;
 scalar_t__ NGX_HTTP_TFS_LARGE_FILE_KEY_CHAR ;
 int NGX_HTTP_TFS_LARGE_FILE_TYPE ;
 scalar_t__ NGX_HTTP_TFS_SMALL_FILE_KEY_CHAR ;
 int NGX_HTTP_TFS_SMALL_FILE_TYPE ;

ngx_http_tfs_raw_file_type_e
ngx_http_tfs_raw_fsname_check_file_type(ngx_str_t *tfs_name)
{
    ngx_http_tfs_raw_file_type_e file_type = NGX_HTTP_TFS_INVALID_FILE_TYPE;

    if (tfs_name->data != ((void*)0)
        && tfs_name->len >= NGX_HTTP_TFS_FILE_NAME_LEN)
    {
        if (tfs_name->data[0] == NGX_HTTP_TFS_LARGE_FILE_KEY_CHAR) {
            file_type = NGX_HTTP_TFS_LARGE_FILE_TYPE;

        } else if (tfs_name->data[0] == NGX_HTTP_TFS_SMALL_FILE_KEY_CHAR) {
            file_type = NGX_HTTP_TFS_SMALL_FILE_TYPE;
        }
    }

    return file_type;
}
