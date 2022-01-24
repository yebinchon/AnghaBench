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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_item; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int VLC_ENOITEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(vlc_playlist_t *playlist,
                                input_item_node_t *subitems)
{
    FUNC0(playlist);
    input_item_t *media = subitems->p_item;
    ssize_t index = FUNC2(playlist, media);
    if (index == -1)
        return VLC_ENOITEM;

    /* replace the item by its flatten subtree */
    return FUNC1(playlist, index, subitems);
}