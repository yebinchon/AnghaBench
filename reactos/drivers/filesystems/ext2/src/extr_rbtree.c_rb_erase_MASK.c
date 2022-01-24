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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; int /*<<< orphan*/  rb_parent_color; } ;
typedef  scalar_t__ ULONG_PTR ;

/* Variables and functions */
 scalar_t__ RB_BLACK ; 
 int /*<<< orphan*/  FUNC0 (struct rb_node*,struct rb_node*,struct rb_root*) ; 
 scalar_t__ FUNC1 (struct rb_node*) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_node*,struct rb_node*) ; 

void FUNC4(struct rb_node *node, struct rb_root *root)
{
    struct rb_node *child, *parent;
    ULONG_PTR color;

    if (!node->rb_left)
        child = node->rb_right;
    else if (!node->rb_right)
        child = node->rb_left;
    else
    {
        struct rb_node *old = node, *left;

        node = node->rb_right;
        while ((left = node->rb_left) != NULL)
            node = left;
        child = node->rb_right;
        parent = FUNC2(node);
        color = FUNC1(node);

        if (child)
            FUNC3(child, parent);
        if (parent == old) {
            parent->rb_right = child;
            parent = node;
        } else
            parent->rb_left = child;

        node->rb_parent_color = old->rb_parent_color;
        node->rb_right = old->rb_right;
        node->rb_left = old->rb_left;

        if (FUNC2(old))
        {
            if (FUNC2(old)->rb_left == old)
                FUNC2(old)->rb_left = node;
            else
                FUNC2(old)->rb_right = node;
        } else
            root->rb_node = node;

        FUNC3(old->rb_left, node);
        if (old->rb_right)
            FUNC3(old->rb_right, node);
        goto color;
    }

    parent = FUNC2(node);
    color = FUNC1(node);

    if (child)
        FUNC3(child, parent);
    if (parent)
    {
        if (parent->rb_left == node)
            parent->rb_left = child;
        else
            parent->rb_right = child;
    }
    else
        root->rb_node = child;

color:
    if (color == RB_BLACK)
        FUNC0(child, parent, root);
}