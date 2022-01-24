#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yajl_gen ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  gen; } ;
typedef  TYPE_1__ ngx_http_tfs_json_gen_t ;
struct TYPE_12__ {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ ngx_http_tfs_file_hole_info_t ;
struct TYPE_13__ {TYPE_4__* buf; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_14__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef  TYPE_4__ ngx_buf_t ;
struct TYPE_15__ {scalar_t__ nelts; scalar_t__ elts; } ;
typedef  TYPE_5__ ngx_array_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

ngx_chain_t *
FUNC9(ngx_http_tfs_json_gen_t *tj_gen,
    ngx_array_t *file_holes)
{
    size_t                          size;
    yajl_gen                        g;
    ngx_buf_t                      *b;
    ngx_uint_t                      i;
    ngx_chain_t                    *cl;
    ngx_http_tfs_file_hole_info_t  *file_hole_info;

    g = tj_gen->gen;
    size = 0;

    FUNC3(g);

    file_hole_info = (ngx_http_tfs_file_hole_info_t *) file_holes->elts;
    for(i = 0; i < file_holes->nelts; i++, file_hole_info++) {
        FUNC7(g);

        FUNC8(g, (const unsigned char *) "OFFSET", 6);
        FUNC5(g, file_hole_info->offset);

        FUNC8(g, (const unsigned char *) "LENGTH", 6);
        FUNC5(g, file_hole_info->length);

        FUNC6(g);
    }

    FUNC2(g);

    cl = FUNC0(tj_gen->pool);
    if (cl == NULL) {
        return NULL;
    }
    cl->next = NULL;

    b = FUNC1(tj_gen->pool);
    if (b == NULL) {
        return NULL;
    }

    FUNC4(g, (const unsigned char **) &b->pos, &size);
    b->last = b->pos + size;
    b->end = b->last;
    b->temporary = 1;
    b->flush = 1;
    /* b->last_buf = 1; */
    cl->buf = b;
    return cl;
}