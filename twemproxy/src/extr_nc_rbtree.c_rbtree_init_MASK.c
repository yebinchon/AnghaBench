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
 int /*<<< orphan*/  FUNC0 (struct rbnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct rbnode*) ; 

void
FUNC2(struct rbtree *tree, struct rbnode *node)
{
    FUNC1(node);
    FUNC0(node);
    tree->root = node;
    tree->sentinel = node;
}