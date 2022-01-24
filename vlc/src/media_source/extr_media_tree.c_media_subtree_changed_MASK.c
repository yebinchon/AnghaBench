#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ vlc_media_tree_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  on_children_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(input_item_t *media, input_item_node_t *node,
                      void *userdata)
{
    vlc_media_tree_t *tree = userdata;

    FUNC3(tree);
    input_item_node_t *subtree_root;
    /* TODO retrieve the node without traversing the tree */
    bool found = FUNC2(&tree->root, media,
                                                &subtree_root, NULL);
    if (!found) {
        /* the node probably failed to be allocated */
        FUNC5(tree);
        return;
    }

    FUNC1(subtree_root);
    FUNC0(subtree_root, node);
    FUNC4(tree, on_children_reset, subtree_root);
    FUNC5(tree);
}