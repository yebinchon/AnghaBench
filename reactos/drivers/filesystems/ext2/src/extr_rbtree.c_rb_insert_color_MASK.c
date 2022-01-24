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
 int /*<<< orphan*/  FUNC0 (struct rb_node*,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_root*) ; 
 scalar_t__ FUNC2 (struct rb_node*) ; 
 struct rb_node* FUNC3 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct rb_node*) ; 

void FUNC6(struct rb_node *node, struct rb_root *root)
{
    struct rb_node *parent, *gparent;

    while ((parent = FUNC3(node)) && FUNC2(parent))
    {
        gparent = FUNC3(parent);

        if (parent == gparent->rb_left)
        {
            {
                register struct rb_node *uncle = gparent->rb_right;
                if (uncle && FUNC2(uncle))
                {
                    FUNC4(uncle);
                    FUNC4(parent);
                    FUNC5(gparent);
                    node = gparent;
                    continue;
                }
            }

            if (parent->rb_right == node)
            {
                register struct rb_node *tmp;
                FUNC0(parent, root);
                tmp = parent;
                parent = node;
                node = tmp;
            }

            FUNC4(parent);
            FUNC5(gparent);
            FUNC1(gparent, root);
        } else {
            {
                register struct rb_node *uncle = gparent->rb_left;
                if (uncle && FUNC2(uncle))
                {
                    FUNC4(uncle);
                    FUNC4(parent);
                    FUNC5(gparent);
                    node = gparent;
                    continue;
                }
            }

            if (parent->rb_left == node)
            {
                register struct rb_node *tmp;
                FUNC1(parent, root);
                tmp = parent;
                parent = node;
                node = tmp;
            }

            FUNC4(parent);
            FUNC5(gparent);
            FUNC0(gparent, root);
        }
    }

    FUNC4(root->rb_node);
}