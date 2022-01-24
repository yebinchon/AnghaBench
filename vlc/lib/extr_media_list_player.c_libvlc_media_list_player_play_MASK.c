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
struct TYPE_6__ {int /*<<< orphan*/  p_mi; int /*<<< orphan*/  current_playing_item_path; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(libvlc_media_list_player_t * p_mlp)
{
    FUNC1(p_mlp);
    if (!p_mlp->current_playing_item_path)
    {
        FUNC2(p_mlp, 1);
        FUNC3(p_mlp);
        return; /* Will set to play */
    }
    FUNC0(p_mlp->p_mi);
    FUNC3(p_mlp);
}