#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_media_tree_t ;
struct TYPE_7__ {int /*<<< orphan*/  node; void* userdata; struct vlc_media_tree_callbacks const* cbs; } ;
typedef  TYPE_1__ vlc_media_tree_listener_id ;
struct vlc_media_tree_callbacks {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  listeners; } ;
typedef  TYPE_2__ media_tree_private_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

vlc_media_tree_listener_id *
FUNC7(vlc_media_tree_t *tree,
                           const struct vlc_media_tree_callbacks *cbs,
                           void *userdata, bool notify_current_state)
{
    vlc_media_tree_listener_id *listener = FUNC0(sizeof(*listener));
    if (FUNC2(!listener))
        return NULL;
    listener->cbs = cbs;
    listener->userdata = userdata;

    media_tree_private_t *priv = FUNC1(tree);
    FUNC4(tree);

    FUNC3(&listener->node, &priv->listeners);

    if (notify_current_state)
        FUNC5(tree, listener);

    FUNC6(tree);
    return listener;
}