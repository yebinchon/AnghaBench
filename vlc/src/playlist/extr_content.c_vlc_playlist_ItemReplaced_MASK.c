#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_6__** data; } ;
struct TYPE_12__ {TYPE_1__ items; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  media; } ;

/* Variables and functions */
 int /*<<< orphan*/  on_items_updated ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,size_t,TYPE_6__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC6(vlc_playlist_t *playlist, size_t index)
{
    struct vlc_playlist_state state;
    FUNC5(playlist, &state);

    playlist->has_prev = FUNC2(playlist);
    playlist->has_next = FUNC1(playlist);

    FUNC3(playlist, on_items_updated, index,
                        &playlist->items.data[index], 1);
    FUNC4(playlist, &state);

    FUNC0(playlist, playlist->items.data[index]->media);
}