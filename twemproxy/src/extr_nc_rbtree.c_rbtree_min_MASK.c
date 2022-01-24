#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rbtree {struct rbnode* sentinel; struct rbnode* root; } ;
struct rbnode {int dummy; } ;

/* Variables and functions */
 struct rbnode* FUNC0 (struct rbnode*,struct rbnode*) ; 

struct rbnode *
FUNC1(struct rbtree *tree)
{
    struct rbnode *node = tree->root;
    struct rbnode *sentinel = tree->sentinel;

    /* empty tree */

    if (node == sentinel) {
        return NULL;
    }

    return FUNC0(node, sentinel);
}