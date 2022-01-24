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
struct TYPE_7__ {TYPE_1__** data; } ;
struct TYPE_8__ {int /*<<< orphan*/  player; TYPE_2__ items; } ;
typedef  TYPE_3__ vlc_playlist_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_6__ {int /*<<< orphan*/ * media; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

int
FUNC2(vlc_playlist_t *playlist, ssize_t index)
{
    FUNC1(playlist);

    input_item_t *media = index != -1
                        ? playlist->items.data[index]->media
                        : NULL;
    return FUNC0(playlist->player, media);
}