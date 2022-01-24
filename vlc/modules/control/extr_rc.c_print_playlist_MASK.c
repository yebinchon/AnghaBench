#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  intf_thread_t ;
struct TYPE_3__ {scalar_t__ i_duration; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 scalar_t__ INPUT_DURATION_INDEFINITE ; 
 int MSTRTIME_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(intf_thread_t *p_intf, vlc_playlist_t *playlist)
{
    size_t count = FUNC3(playlist);
    for (size_t i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = FUNC4(playlist, i);
        input_item_t *item = FUNC5(plitem);
        vlc_tick_t len = item->i_duration;
        if (len != INPUT_DURATION_INDEFINITE && len != VLC_TICK_INVALID)
        {
            char buf[MSTRTIME_MAX_SIZE];
            FUNC2(buf, FUNC0(len));
            FUNC1("|-- %s (%s)", item->psz_name, buf);
        }
        else
            FUNC1("|-- %s", item->psz_name);
    }
}