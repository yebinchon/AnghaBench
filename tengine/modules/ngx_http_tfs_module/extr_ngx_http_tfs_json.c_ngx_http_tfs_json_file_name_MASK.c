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
struct TYPE_10__ {int len; scalar_t__ data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  gen; } ;
typedef  TYPE_2__ ngx_http_tfs_json_gen_t ;
struct TYPE_12__ {TYPE_4__* buf; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_13__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef  TYPE_4__ ngx_buf_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

ngx_chain_t *
FUNC6(ngx_http_tfs_json_gen_t *tj_gen,
    ngx_str_t *file_name)
{
    size_t        size;
    yajl_gen      g;
    ngx_buf_t    *b;
    ngx_chain_t  *cl;

    g = tj_gen->gen;
    size = 0;

    FUNC4(g);
    FUNC5(g, (const unsigned char *) "TFS_FILE_NAME", 13);
    FUNC5(g, (const unsigned char *) file_name->data, file_name->len);
    FUNC3(g);

    cl = FUNC0(tj_gen->pool);
    if (cl == NULL) {
        return NULL;
    }
    cl->next = NULL;

    b = FUNC1(tj_gen->pool);
    if (b == NULL) {
        return NULL;
    }
    FUNC2(g, (const unsigned char **) &b->pos, &size);
    b->last = b->pos + size;
    b->end = b->last;
    b->temporary = 1;
    b->flush = 1;
    /* b->last_buf = 1; */
    cl->buf = b;
    return cl;
}