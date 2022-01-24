#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yajl_gen ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  unsigned char const u_char ;
struct TYPE_10__ {int /*<<< orphan*/  crc; int /*<<< orphan*/  flag; int /*<<< orphan*/  create_time; int /*<<< orphan*/  modify_time; int /*<<< orphan*/  u_size; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ ngx_http_tfs_raw_file_stat_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  gen; } ;
typedef  TYPE_2__ ngx_http_tfs_json_gen_t ;
struct TYPE_12__ {TYPE_4__* buf; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_13__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef  TYPE_4__ ngx_buf_t ;

/* Variables and functions */
 int NGX_HTTP_TFS_GMT_TIME_SIZE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

ngx_chain_t *
FUNC8(ngx_http_tfs_json_gen_t *tj_gen,
    u_char* file_name, uint32_t block_id,
    ngx_http_tfs_raw_file_stat_t *file_stat)
{
    size_t        size;
    u_char        time_buf[NGX_HTTP_TFS_GMT_TIME_SIZE];
    yajl_gen      g;
    ngx_buf_t    *b;
    ngx_chain_t  *cl;

    g = tj_gen->gen;
    size = 0;

    FUNC6(g);

    FUNC7(g, (const unsigned char *) "FILE_NAME", 9);
    FUNC7(g, (const unsigned char *) file_name, 18);

    FUNC7(g, (const unsigned char *) "BLOCK_ID", 8);
    FUNC4(g, block_id);

    FUNC7(g, (const unsigned char *) "FILE_ID", 7);
    FUNC4(g, file_stat->id);

    FUNC7(g, (const unsigned char *) "OFFSET", 6);
    FUNC4(g, file_stat->offset);

    FUNC7(g, (const unsigned char *) "SIZE", 4);
    FUNC4(g, file_stat->size);

    FUNC7(g, (const unsigned char *) "OCCUPY_SIZE", 11);
    FUNC4(g, file_stat->u_size);

    FUNC2(time_buf, file_stat->modify_time);
    FUNC7(g, (const unsigned char *) "MODIFY_TIME", 11);
    FUNC7(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

    FUNC2(time_buf, file_stat->create_time);
    FUNC7(g, (const unsigned char *) "CREATE_TIME", 11);
    FUNC7(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

    FUNC7(g, (const unsigned char *) "STATUS", 6);
    FUNC4(g, file_stat->flag);

    FUNC7(g, (const unsigned char *) "CRC", 3);
    FUNC4(g, file_stat->crc);

    FUNC5(g);

    cl = FUNC0(tj_gen->pool);
    if (cl == NULL) {
        return NULL;
    }
    cl->next = NULL;

    b = FUNC1(tj_gen->pool);
    if (b == NULL) {
        return NULL;
    }

    FUNC3(g, (const unsigned char **) &b->pos, &size);

    b->last = b->pos + size;
    b->end = b->last;
    b->temporary = 1;
    b->flush = 1;

    /* b->last_buf = 1; */

    cl->buf = b;

    return cl;
}