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
typedef  scalar_t__ uint8_t ;
struct rbtree {struct rbnode* sentinel; struct rbnode* root; } ;
struct rbnode {struct rbnode* parent; struct rbnode* left; struct rbnode* right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct rbnode*,struct rbnode*) ; 
 scalar_t__ FUNC2 (struct rbnode*) ; 
 scalar_t__ FUNC3 (struct rbnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbnode**,struct rbnode*,struct rbnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbnode*) ; 
 struct rbnode* FUNC6 (struct rbnode*,struct rbnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct rbnode**,struct rbnode*,struct rbnode*) ; 

void
FUNC9(struct rbtree *tree, struct rbnode *node)
{
    struct rbnode **root = &tree->root;
    struct rbnode *sentinel = tree->sentinel;
    struct rbnode *subst, *temp, *w;
    uint8_t red;

    /* a binary tree delete */

    if (node->left == sentinel) {
        temp = node->right;
        subst = node;
    } else if (node->right == sentinel) {
        temp = node->left;
        subst = node;
    } else {
        subst = FUNC6(node->right, sentinel);
        temp = subst->right;
    }

    if (subst == *root) {
        *root = temp;
        FUNC0(temp);

        FUNC5(node);

        return;
    }

    red = FUNC3(subst);

    if (subst == subst->parent->left) {
        subst->parent->left = temp;
    } else {
        subst->parent->right = temp;
    }

    if (subst == node) {
        temp->parent = subst->parent;
    } else {

        if (subst->parent == node) {
            temp->parent = subst;
        } else {
            temp->parent = subst->parent;
        }

        subst->left = node->left;
        subst->right = node->right;
        subst->parent = node->parent;
        FUNC1(subst, node);

        if (node == *root) {
            *root = subst;
        } else {
            if (node == node->parent->left) {
                node->parent->left = subst;
            } else {
                node->parent->right = subst;
            }
        }

        if (subst->left != sentinel) {
            subst->left->parent = subst;
        }

        if (subst->right != sentinel) {
            subst->right->parent = subst;
        }
    }

    FUNC5(node);

    if (red) {
        return;
    }

    /* a delete fixup */

    while (temp != *root && FUNC2(temp)) {

        if (temp == temp->parent->left) {
            w = temp->parent->right;

            if (FUNC3(w)) {
                FUNC0(w);
                FUNC7(temp->parent);
                FUNC4(root, sentinel, temp->parent);
                w = temp->parent->right;
            }

            if (FUNC2(w->left) && FUNC2(w->right)) {
                FUNC7(w);
                temp = temp->parent;
            } else {
                if (FUNC2(w->right)) {
                    FUNC0(w->left);
                    FUNC7(w);
                    FUNC8(root, sentinel, w);
                    w = temp->parent->right;
                }

                FUNC1(w, temp->parent);
                FUNC0(temp->parent);
                FUNC0(w->right);
                FUNC4(root, sentinel, temp->parent);
                temp = *root;
            }

        } else {
            w = temp->parent->left;

            if (FUNC3(w)) {
                FUNC0(w);
                FUNC7(temp->parent);
                FUNC8(root, sentinel, temp->parent);
                w = temp->parent->left;
            }

            if (FUNC2(w->left) && FUNC2(w->right)) {
                FUNC7(w);
                temp = temp->parent;
            } else {
                if (FUNC2(w->left)) {
                    FUNC0(w->right);
                    FUNC7(w);
                    FUNC4(root, sentinel, w);
                    w = temp->parent->left;
                }

                FUNC1(w, temp->parent);
                FUNC0(temp->parent);
                FUNC0(w->left);
                FUNC8(root, sentinel, temp->parent);
                temp = *root;
            }
        }
    }

    FUNC0(temp);
}