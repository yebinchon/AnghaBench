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
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_node*) ; 

__attribute__((used)) static void FUNC2(struct rb_node *node, struct rb_root *root)
{
    struct rb_node *left = node->rb_left;
    struct rb_node *parent = FUNC0(node);

    if ((node->rb_left = left->rb_right))
        FUNC1(left->rb_right, node);
    left->rb_right = node;

    FUNC1(left, parent);

    if (parent)
    {
        if (node == parent->rb_right)
            parent->rb_right = left;
        else
            parent->rb_left = left;
    }
    else
        root->rb_node = left;
    FUNC1(node, left);
}