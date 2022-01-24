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
typedef  enum input_item_preparse_status { ____Placeholder_input_item_preparse_status } input_item_preparse_status ;

/* Variables and functions */
 int /*<<< orphan*/  on_preparse_end ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(input_item_t *media,
                             enum input_item_preparse_status status,
                             void *user_data)
{
    vlc_media_tree_t *tree = user_data;

    FUNC1(tree);
    input_item_node_t *subtree_root;
    /* TODO retrieve the node without traversing the tree */
    bool found = FUNC0(&tree->root, media,
                                                &subtree_root, NULL);
    if (!found) {
        /* the node probably failed to be allocated */
        FUNC3(tree);
        return;
    }
    FUNC2(tree, on_preparse_end, subtree_root, status);
    FUNC3(tree);
}