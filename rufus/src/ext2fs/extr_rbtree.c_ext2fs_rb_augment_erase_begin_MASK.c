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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (struct rb_node*) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 

struct rb_node *FUNC2(struct rb_node *node)
{
	struct rb_node *deepest;

	if (!node->rb_right && !node->rb_left)
		deepest = FUNC1(node);
	else if (!node->rb_right)
		deepest = node->rb_left;
	else if (!node->rb_left)
		deepest = node->rb_right;
	else {
		deepest = FUNC0(node);
		if (!deepest)
			return NULL;
		if (deepest->rb_right)
			deepest = deepest->rb_right;
		else if (FUNC1(deepest) != node)
			deepest = FUNC1(deepest);
	}

	return deepest;
}