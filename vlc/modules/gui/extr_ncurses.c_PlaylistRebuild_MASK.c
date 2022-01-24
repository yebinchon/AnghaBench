#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_9__ {size_t size; scalar_t__* data; } ;
struct TYPE_8__ {int need_update; TYPE_3__ pl_item_names; int /*<<< orphan*/ * playlist; } ;
typedef  TYPE_2__ intf_sys_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,size_t) ; 

__attribute__((used)) static void FUNC8(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    for (size_t i = 0; i < sys->pl_item_names.size; ++i)
        FUNC0((void *)sys->pl_item_names.data[i]);
    FUNC5(&sys->pl_item_names);

    size_t count = FUNC2(playlist);
    if (!FUNC7(&sys->pl_item_names, count))
        return;
    for (size_t i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = FUNC3(playlist, i);
        input_item_t *item = FUNC4(plitem);
        char *name = FUNC1(item);
        FUNC6(&sys->pl_item_names, name);
    }

    sys->need_update = false;
}