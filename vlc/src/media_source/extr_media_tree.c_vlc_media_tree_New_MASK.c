#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pp_children; int /*<<< orphan*/  i_children; int /*<<< orphan*/ * p_item; } ;
struct TYPE_6__ {TYPE_3__ root; } ;
typedef  TYPE_1__ vlc_media_tree_t ;
struct TYPE_7__ {TYPE_1__ public_data; int /*<<< orphan*/  listeners; int /*<<< orphan*/  rc; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ media_tree_private_t ;
typedef  TYPE_3__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

vlc_media_tree_t *
FUNC6(void)
{
    media_tree_private_t *priv = FUNC1(sizeof(*priv));
    if (FUNC2(!priv))
        return NULL;

    FUNC5(&priv->lock);
    FUNC3(&priv->rc);
    FUNC4(&priv->listeners);

    vlc_media_tree_t *tree = &priv->public_data;
    input_item_node_t *root = &tree->root;
    root->p_item = NULL;
    FUNC0(root->i_children, root->pp_children);

    return tree;
}