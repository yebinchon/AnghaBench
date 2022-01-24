#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_mi; int /*<<< orphan*/  p_mlist; int /*<<< orphan*/  current_playing_item_path; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(libvlc_media_list_player_t * p_mlp, libvlc_media_list_path_t path)
{
    FUNC0(p_mlp);

    /* First, save the new path that we are going to play */
    if (p_mlp->current_playing_item_path != path)
    {
        FUNC1(p_mlp->current_playing_item_path);
        p_mlp->current_playing_item_path = path;
    }

    if (!path)
        return;

    libvlc_media_t * p_md;
    p_md = FUNC3(p_mlp->p_mlist, path);
    if (!p_md)
        return;

    /* Make sure media_player_reached_end() won't get called */
    FUNC6(p_mlp);

    FUNC4(p_mlp->p_mi, p_md);

    FUNC2(p_mlp);
    FUNC5(p_md); /* for libvlc_media_list_item_at_index */
}