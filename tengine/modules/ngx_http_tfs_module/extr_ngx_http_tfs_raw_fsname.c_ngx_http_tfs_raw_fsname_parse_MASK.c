#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_10__ {char* data; scalar_t__ len; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {scalar_t__ file_type; char cluster_id; int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ ngx_http_tfs_raw_fsname_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_HTTP_TFS_FILE_NAME_LEN ; 
 scalar_t__ NGX_HTTP_TFS_INVALID_FILE_TYPE ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

ngx_int_t
FUNC5(ngx_str_t *tfs_name, ngx_str_t *suffix,
    ngx_http_tfs_raw_fsname_t* fsname)
{
    ngx_uint_t  suffix_len;

    if (fsname != NULL && tfs_name->data != NULL && tfs_name->data[0] != '\0') {
        FUNC4(fsname, sizeof(ngx_http_tfs_raw_fsname_t));
        fsname->file_type = FUNC0(tfs_name);
        if (fsname->file_type == NGX_HTTP_TFS_INVALID_FILE_TYPE) {
            return NGX_ERROR;
        } else {
            /* if two suffix exist, check consistency */
            if (suffix != NULL
                && suffix->data != NULL
                && tfs_name->len > NGX_HTTP_TFS_FILE_NAME_LEN)
            {
                suffix_len = tfs_name->len - NGX_HTTP_TFS_FILE_NAME_LEN;
                if (suffix->len != suffix_len) {
                    return NGX_ERROR;
                }
                suffix_len = suffix->len > suffix_len ? suffix_len :suffix->len;
                if (FUNC3(suffix->data,
                               tfs_name->data + NGX_HTTP_TFS_FILE_NAME_LEN,
                               suffix_len))
                {
                    return NGX_ERROR;
                }
            }

            FUNC1(tfs_name->data + 2,
                                           (u_char*) &(fsname->file));
            if (suffix != NULL && suffix->data == NULL) {
                suffix->data = tfs_name->data + NGX_HTTP_TFS_FILE_NAME_LEN;
                suffix->len = tfs_name->len - NGX_HTTP_TFS_FILE_NAME_LEN;
            }

            FUNC2(fsname, suffix);
            if (fsname->cluster_id == 0) {
                fsname->cluster_id = tfs_name->data[1] - '0';
            }
        }
    }

    return NGX_OK;
}