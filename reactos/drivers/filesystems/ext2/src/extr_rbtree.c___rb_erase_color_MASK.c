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
 int /*<<< orphan*/  FUNC2 (struct rb_node*) ; 
 scalar_t__ FUNC3 (struct rb_node*) ; 
 scalar_t__ FUNC4 (struct rb_node*) ; 
 struct rb_node* FUNC5 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct rb_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rb_node*) ; 

__attribute__((used)) static void FUNC9(struct rb_node *node, struct rb_node *parent,
                             struct rb_root *root)
{
    struct rb_node *other;

    while ((!node || FUNC3(node)) && node != root->rb_node)
    {
        if (parent->rb_left == node)
        {
            other = parent->rb_right;
            if (FUNC4(other))
            {
                FUNC6(other);
                FUNC8(parent);
                FUNC0(parent, root);
                other = parent->rb_right;
            }
            if ((!other->rb_left || FUNC3(other->rb_left)) &&
                    (!other->rb_right || FUNC3(other->rb_right)))
            {
                FUNC8(other);
                node = parent;
                parent = FUNC5(node);
            }
            else
            {
                if (!other->rb_right || FUNC3(other->rb_right))
                {
                    struct rb_node *o_left;
                    if ((o_left = other->rb_left))
                        FUNC6(o_left);
                    FUNC8(other);
                    FUNC1(other, root);
                    other = parent->rb_right;
                }
                FUNC7(other, FUNC2(parent));
                FUNC6(parent);
                if (other->rb_right)
                    FUNC6(other->rb_right);
                FUNC0(parent, root);
                node = root->rb_node;
                break;
            }
        }
        else
        {
            other = parent->rb_left;
            if (FUNC4(other))
            {
                FUNC6(other);
                FUNC8(parent);
                FUNC1(parent, root);
                other = parent->rb_left;
            }
            if ((!other->rb_left || FUNC3(other->rb_left)) &&
                    (!other->rb_right || FUNC3(other->rb_right)))
            {
                FUNC8(other);
                node = parent;
                parent = FUNC5(node);
            }
            else
            {
                if (!other->rb_left || FUNC3(other->rb_left))
                {
                    register struct rb_node *o_right;
                    if ((o_right = other->rb_right))
                        FUNC6(o_right);
                    FUNC8(other);
                    FUNC0(other, root);
                    other = parent->rb_left;
                }
                FUNC7(other, FUNC2(parent));
                FUNC6(parent);
                if (other->rb_left)
                    FUNC6(other->rb_left);
                FUNC1(parent, root);
                node = root->rb_node;
                break;
            }
        }
    }
    if (node)
        FUNC6(node);
}