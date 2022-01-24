#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ vlc_media_tree_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

bool
FUNC2(vlc_media_tree_t *tree, const input_item_t *media,
                    input_item_node_t **result,
                    input_item_node_t **result_parent)
{
    FUNC0(tree);

    /* quick & dirty depth-first O(n) implementation, with n the number of nodes
     * in the tree */
    return FUNC1(&tree->root, media, result,
                                          result_parent);
}