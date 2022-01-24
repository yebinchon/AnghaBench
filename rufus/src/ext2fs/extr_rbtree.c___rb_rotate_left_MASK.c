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
struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_node*) ; 

__attribute__((used)) static void FUNC2(struct rb_node *node, struct rb_root *root)
{
	struct rb_node *right = node->rb_right;
	struct rb_node *parent = FUNC0(node);

	if ((node->rb_right = right->rb_left))
		FUNC1(right->rb_left, node);
	right->rb_left = node;

	FUNC1(right, parent);

	if (parent)
	{
		if (node == parent->rb_left)
			parent->rb_left = right;
		else
			parent->rb_right = right;
	}
	else
		root->rb_node = right;
	FUNC1(node, right);
}