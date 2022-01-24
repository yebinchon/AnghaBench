#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_12__ {int /*<<< orphan*/  event_manager; int /*<<< orphan*/  p_mi; } ;
typedef  TYPE_3__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_path_t ;
struct TYPE_10__ {int /*<<< orphan*/ * item; } ;
struct TYPE_11__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_13__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  libvlc_MediaListPlayerNextItemSet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

int FUNC8(libvlc_media_list_player_t * p_mlp, int i_index)
{
    FUNC5(p_mlp);
    libvlc_media_list_path_t path = FUNC1(i_index);
    FUNC6(p_mlp, path);
    libvlc_media_t *p_md = FUNC2(p_mlp->p_mi);
    FUNC3(p_mlp->p_mi);
    FUNC7(p_mlp);

    if (!p_md)
        return -1;

    /* Send the next item event */
    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerNextItemSet;
    event.u.media_list_player_next_item_set.item = p_md;
    FUNC0(&p_mlp->event_manager, &event);
    FUNC4(p_md);
    return 0;
}