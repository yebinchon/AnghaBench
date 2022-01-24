#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ i_refcount; struct TYPE_8__* current_playing_item_path; int /*<<< orphan*/  object_lock; int /*<<< orphan*/  mp_callback_lock; int /*<<< orphan*/  seek_pending; int /*<<< orphan*/  event_manager; scalar_t__ p_mlist; int /*<<< orphan*/  p_mi; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(libvlc_media_list_player_t * p_mlp)
{
    if (!p_mlp)
        return;

    FUNC5(p_mlp);
    p_mlp->i_refcount--;
    if (p_mlp->i_refcount > 0)
    {
        FUNC8(p_mlp);
        return;
    }
    FUNC0(p_mlp->i_refcount == 0);
    FUNC8(p_mlp);

    FUNC9(p_mlp->thread);
    FUNC11(p_mlp->thread, NULL);

    FUNC5(p_mlp);
    /* Keep the lock(), because the uninstall functions
     * check for it. That's convenient. */
    FUNC6(p_mlp);
    FUNC4(p_mlp->p_mi);

    if (p_mlp->p_mlist)
    {
        FUNC7(p_mlp);
        FUNC3(p_mlp->p_mlist);
    }

    FUNC8(p_mlp);

    FUNC2(&p_mlp->event_manager);
    FUNC10(&p_mlp->seek_pending);
    FUNC12(&p_mlp->mp_callback_lock);
    FUNC12(&p_mlp->object_lock);

    FUNC1(p_mlp->current_playing_item_path);
    FUNC1(p_mlp);
}