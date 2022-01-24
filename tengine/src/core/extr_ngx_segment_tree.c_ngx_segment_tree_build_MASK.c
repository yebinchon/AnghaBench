#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ (* cmp ) (TYPE_2__*,TYPE_2__*) ;TYPE_2__* segments; } ;
typedef  TYPE_1__ ngx_segment_tree_t ;
typedef  size_t ngx_int_t ;
struct TYPE_8__ {size_t key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 

void
FUNC2(ngx_segment_tree_t *tree, ngx_int_t index, ngx_int_t l,
    ngx_int_t r)
{
    ngx_int_t   child, mid;
    if (l == r) {
        tree->segments[index].key = l;
        return;
    }

    child = index << 1;
    mid = (l + r) >> 1;

    FUNC2(tree, child, l, mid);
    FUNC2(tree, child + 1, mid + 1, r);

    if (tree->cmp(&tree->segments[child], &tree->segments[child + 1]) > 0) {
        FUNC0(&tree->segments[index], &tree->segments[child]);

    } else {
        FUNC0(&tree->segments[index],
                              &tree->segments[child + 1]);
    }
}