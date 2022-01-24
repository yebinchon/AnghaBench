#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ (* cmp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * segments; } ;
typedef  TYPE_1__ ngx_segment_tree_t ;
typedef  int /*<<< orphan*/  ngx_segment_node_t ;
typedef  size_t ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(ngx_segment_tree_t *tree, ngx_int_t index, ngx_int_t l,
    ngx_int_t r, ngx_int_t pos, ngx_segment_node_t *node)
{
    ngx_int_t   child, mid;
    if (l == r && l == pos) {
        FUNC0(&tree->segments[index], node);
        return;
    }

    child = index << 1;
    mid = (l + r) >> 1;

    if (pos <= mid) {
        FUNC2(tree, child, l, mid, pos, node);

    } else {
        FUNC2(tree, child + 1, mid + 1, r, pos, node);
    }

    if (tree->cmp(&tree->segments[child], &tree->segments[child + 1]) > 0) {
        FUNC0(&tree->segments[index], &tree->segments[child]);

    } else {
        FUNC0(&tree->segments[index],
                              &tree->segments[child + 1]);
    }
}