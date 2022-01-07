
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_10__ {char* data; scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {scalar_t__ file_type; char cluster_id; int file; } ;
typedef TYPE_2__ ngx_http_tfs_raw_fsname_t ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_FILE_NAME_LEN ;
 scalar_t__ NGX_HTTP_TFS_INVALID_FILE_TYPE ;
 int NGX_OK ;
 scalar_t__ ngx_http_tfs_raw_fsname_check_file_type (TYPE_1__*) ;
 int ngx_http_tfs_raw_fsname_decode (char*,int *) ;
 int ngx_http_tfs_raw_fsname_set_suffix (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ ngx_memcmp (char*,char*,scalar_t__) ;
 int ngx_memzero (TYPE_2__*,int) ;

ngx_int_t
ngx_http_tfs_raw_fsname_parse(ngx_str_t *tfs_name, ngx_str_t *suffix,
    ngx_http_tfs_raw_fsname_t* fsname)
{
    ngx_uint_t suffix_len;

    if (fsname != ((void*)0) && tfs_name->data != ((void*)0) && tfs_name->data[0] != '\0') {
        ngx_memzero(fsname, sizeof(ngx_http_tfs_raw_fsname_t));
        fsname->file_type = ngx_http_tfs_raw_fsname_check_file_type(tfs_name);
        if (fsname->file_type == NGX_HTTP_TFS_INVALID_FILE_TYPE) {
            return NGX_ERROR;
        } else {

            if (suffix != ((void*)0)
                && suffix->data != ((void*)0)
                && tfs_name->len > NGX_HTTP_TFS_FILE_NAME_LEN)
            {
                suffix_len = tfs_name->len - NGX_HTTP_TFS_FILE_NAME_LEN;
                if (suffix->len != suffix_len) {
                    return NGX_ERROR;
                }
                suffix_len = suffix->len > suffix_len ? suffix_len :suffix->len;
                if (ngx_memcmp(suffix->data,
                               tfs_name->data + NGX_HTTP_TFS_FILE_NAME_LEN,
                               suffix_len))
                {
                    return NGX_ERROR;
                }
            }

            ngx_http_tfs_raw_fsname_decode(tfs_name->data + 2,
                                           (u_char*) &(fsname->file));
            if (suffix != ((void*)0) && suffix->data == ((void*)0)) {
                suffix->data = tfs_name->data + NGX_HTTP_TFS_FILE_NAME_LEN;
                suffix->len = tfs_name->len - NGX_HTTP_TFS_FILE_NAME_LEN;
            }

            ngx_http_tfs_raw_fsname_set_suffix(fsname, suffix);
            if (fsname->cluster_id == 0) {
                fsname->cluster_id = tfs_name->data[1] - '0';
            }
        }
    }

    return NGX_OK;
}
