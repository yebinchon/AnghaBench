#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yajl_gen ;
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
typedef  unsigned char const u_char ;
typedef  size_t ngx_uint_t ;
typedef  int ngx_int_t ;
struct TYPE_15__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  gen; } ;
typedef  TYPE_3__ ngx_http_tfs_json_gen_t ;
struct TYPE_16__ {size_t file_count; TYPE_5__* files; struct TYPE_16__* next; } ;
typedef  TYPE_4__ ngx_http_tfs_custom_meta_info_t ;
struct TYPE_14__ {int pid; int id; int size; int ver_no; int /*<<< orphan*/  modify_time; int /*<<< orphan*/  create_time; } ;
struct TYPE_13__ {int len; scalar_t__ data; } ;
struct TYPE_17__ {TYPE_2__ file_info; TYPE_1__ file_name; } ;
typedef  TYPE_5__ ngx_http_tfs_custom_file_t ;
struct TYPE_18__ {TYPE_7__* buf; int /*<<< orphan*/ * next; } ;
typedef  TYPE_6__ ngx_chain_t ;
struct TYPE_19__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef  TYPE_7__ ngx_buf_t ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_TFS_CUSTOM_FT_DIR ; 
 int NGX_HTTP_TFS_GMT_TIME_SIZE ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

ngx_chain_t *
FUNC11(ngx_http_tfs_json_gen_t *tj_gen,
    ngx_http_tfs_custom_meta_info_t *meta_info, uint8_t file_type)
{
    size_t                       size;
    u_char                       time_buf[NGX_HTTP_TFS_GMT_TIME_SIZE];
    yajl_gen                     g;
    uint32_t                     count;
    ngx_buf_t                   *b;
    ngx_int_t                    is_file;
    ngx_uint_t                   i;
    ngx_chain_t                 *cl;
    ngx_http_tfs_custom_file_t  *file;

    g = tj_gen->gen;
    size = 0;

    if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
        FUNC4(g);
    }

    for(; meta_info; meta_info = meta_info->next) {
        count = meta_info->file_count;
        file = meta_info->files;

        for (i = 0; i < count; i++) {
            FUNC9(g);

            FUNC10(g, (const unsigned char *) "NAME", 4);
            FUNC10(g, (const unsigned char *) file[i].file_name.data,
                            file[i].file_name.len);

            FUNC10(g, (const unsigned char *) "PID", 3);
            FUNC7(g, file[i].file_info.pid);

            FUNC10(g, (const unsigned char *) "ID", 2);
            FUNC7(g, file[i].file_info.id);

            FUNC10(g, (const unsigned char *) "SIZE", 4);
            FUNC7(g, file[i].file_info.size);

            FUNC10(g, (const unsigned char *) "IS_FILE", 7);
            if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
                is_file = (file[i].file_info.pid >> 63) & 0x01;
            } else {
                is_file = 1;
            }
            FUNC5(g, is_file);

            FUNC2(time_buf, file[i].file_info.create_time);
            FUNC10(g, (const unsigned char *) "CREATE_TIME", 11);
            FUNC10(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

            FUNC2(time_buf, file[i].file_info.modify_time);
            FUNC10(g, (const unsigned char *) "MODIFY_TIME", 11);
            FUNC10(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

            FUNC10(g, (const unsigned char *) "VER_NO", 6);
            FUNC7(g, file[i].file_info.ver_no);

            FUNC8(g);
        }
    }

    if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
        FUNC3(g);
    }

    cl = FUNC0(tj_gen->pool);
    if (cl == NULL) {
        return NULL;
    }
    cl->next = NULL;

    b = FUNC1(tj_gen->pool);
    if (b == NULL) {
        return NULL;
    }

    FUNC6(g, (const unsigned char **) &b->pos, &size);
    b->last = b->pos + size;
    b->end = b->last;
    b->temporary = 1;
    b->flush = 1;
    /* b->last_buf = 1; */
    cl->buf = b;

    return cl;
}