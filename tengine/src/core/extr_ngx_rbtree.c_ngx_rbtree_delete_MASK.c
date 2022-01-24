#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_20__ {TYPE_2__* sentinel; TYPE_2__* root; } ;
typedef  TYPE_1__ ngx_rbtree_t ;
struct TYPE_21__ {struct TYPE_21__* parent; struct TYPE_21__* left; struct TYPE_21__* right; scalar_t__ key; } ;
typedef  TYPE_2__ ngx_rbtree_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 

void
FUNC8(ngx_rbtree_t *tree, ngx_rbtree_node_t *node)
{
    ngx_uint_t           red;
    ngx_rbtree_node_t  **root, *sentinel, *subst, *temp, *w;

    /* a binary tree delete */

    root = &tree->root;
    sentinel = tree->sentinel;

    if (node->left == sentinel) {
        temp = node->right;
        subst = node;

    } else if (node->right == sentinel) {
        temp = node->left;
        subst = node;

    } else {
        subst = FUNC6(node->right, sentinel);

        if (subst->left != sentinel) {
            temp = subst->left;
        } else {
            temp = subst->right;
        }
    }

    if (subst == *root) {
        *root = temp;
        FUNC0(temp);

        /* DEBUG stuff */
        node->left = NULL;
        node->right = NULL;
        node->parent = NULL;
        node->key = 0;

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

    /* DEBUG stuff */
    node->left = NULL;
    node->right = NULL;
    node->parent = NULL;
    node->key = 0;

    if (red) {
        return;
    }

    /* a delete fixup */

    while (temp != *root && FUNC2(temp)) {

        if (temp == temp->parent->left) {
            w = temp->parent->right;

            if (FUNC3(w)) {
                FUNC0(w);
                FUNC4(temp->parent);
                FUNC5(root, sentinel, temp->parent);
                w = temp->parent->right;
            }

            if (FUNC2(w->left) && FUNC2(w->right)) {
                FUNC4(w);
                temp = temp->parent;

            } else {
                if (FUNC2(w->right)) {
                    FUNC0(w->left);
                    FUNC4(w);
                    FUNC7(root, sentinel, w);
                    w = temp->parent->right;
                }

                FUNC1(w, temp->parent);
                FUNC0(temp->parent);
                FUNC0(w->right);
                FUNC5(root, sentinel, temp->parent);
                temp = *root;
            }

        } else {
            w = temp->parent->left;

            if (FUNC3(w)) {
                FUNC0(w);
                FUNC4(temp->parent);
                FUNC7(root, sentinel, temp->parent);
                w = temp->parent->left;
            }

            if (FUNC2(w->left) && FUNC2(w->right)) {
                FUNC4(w);
                temp = temp->parent;

            } else {
                if (FUNC2(w->left)) {
                    FUNC0(w->right);
                    FUNC4(w);
                    FUNC5(root, sentinel, w);
                    w = temp->parent->left;
                }

                FUNC1(w, temp->parent);
                FUNC0(temp->parent);
                FUNC0(w->left);
                FUNC7(root, sentinel, temp->parent);
                temp = *root;
            }
        }
    }

    FUNC0(temp);
}