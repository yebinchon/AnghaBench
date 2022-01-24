#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef  TYPE_1__ ngx_rbtree_node_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_6__ {TYPE_1__* sentinel; } ;

/* Variables and functions */
 TYPE_1__** FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ ngx_event_timer_rbtree ; 

__attribute__((used)) static void
FUNC1(ngx_array_t *array, ngx_rbtree_node_t *root)
{
    ngx_rbtree_node_t              **node;

    if (array != NULL && root != NULL
        && root != ngx_event_timer_rbtree.sentinel)
    {
        FUNC1(array, root->left);
        node = FUNC0(array);
        if (node == NULL) {
            return;
        }
        *node = (ngx_rbtree_node_t *) root;
        FUNC1(array, root->right);
    }
}