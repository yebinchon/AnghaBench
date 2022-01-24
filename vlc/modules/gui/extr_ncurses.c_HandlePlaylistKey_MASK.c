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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct vlc_playlist_sort_criterion {int /*<<< orphan*/  order; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_8__ {int need_update; int plidx_follow; int /*<<< orphan*/  box_idx; TYPE_1__ pl_item_names; int /*<<< orphan*/  box_lines_total; int /*<<< orphan*/ * playlist; } ;
typedef  TYPE_3__ intf_sys_t ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef  enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;

/* Variables and functions */
#define  KEY_BACKSPACE 133 
#define  KEY_DC 132 
#define  KEY_ENTER 131 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_ALL 130 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT 129 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_NONE 128 
 int /*<<< orphan*/  VLC_PLAYLIST_SORT_KEY_TITLE ; 
 int /*<<< orphan*/  VLC_PLAYLIST_SORT_ORDER_ASCENDING ; 
 int /*<<< orphan*/  VLC_PLAYLIST_SORT_ORDER_DESCENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vlc_playlist_sort_criterion*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(intf_thread_t *intf, int key)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    switch(key)
    {
    /* Playlist Settings */
    case 'r':
        FUNC4(playlist);
        enum vlc_playlist_playback_order order_mode =
            FUNC2(playlist);
        order_mode =
            order_mode == VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL
            ? VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM
            : VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;
        FUNC7(playlist, order_mode);
        FUNC10(playlist);
        return true;
    case 'l':
    case 'R':
        FUNC4(playlist);
        enum vlc_playlist_playback_repeat repeat_mode =
            FUNC3(playlist);
        switch (repeat_mode)
        {
            case VLC_PLAYLIST_PLAYBACK_REPEAT_NONE:
                repeat_mode = key == 'l'
                    ? VLC_PLAYLIST_PLAYBACK_REPEAT_ALL
                    : VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT;
                break;
            case VLC_PLAYLIST_PLAYBACK_REPEAT_ALL:
                repeat_mode = key == 'l'
                    ? VLC_PLAYLIST_PLAYBACK_REPEAT_NONE
                    : VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT;
                break;
            case VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT:
                repeat_mode = key == 'l'
                    ? VLC_PLAYLIST_PLAYBACK_REPEAT_ALL
                    : VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;
                break;
        }
        FUNC8(playlist, repeat_mode);
        FUNC10(playlist);
        return true;

    /* Playlist sort */
    case 'o':
    case 'O':
        FUNC4(playlist);
        struct vlc_playlist_sort_criterion criteria =
        {
            .key = VLC_PLAYLIST_SORT_KEY_TITLE,
            .order = key == 'o'
                ? VLC_PLAYLIST_SORT_ORDER_ASCENDING
                : VLC_PLAYLIST_SORT_ORDER_DESCENDING
        };
        FUNC9(playlist, &criteria, 1);
        sys->need_update = true;
        FUNC10(playlist);
        return true;

    case ';':
        FUNC0(sys);
        return true;

    case 'g':
        FUNC4(playlist);
        sys->box_idx = FUNC1(playlist);
        FUNC10(playlist);
        sys->plidx_follow = true;
        return true;

    /* Deletion */
    case 'D':
    case KEY_BACKSPACE:
    case 0x7f:
    case KEY_DC:
        if (sys->pl_item_names.size)
        {
            FUNC4(playlist);
            FUNC6(playlist, sys->box_idx);
            if (sys->box_idx >= sys->box_lines_total - 1)
                sys->box_idx = sys->box_lines_total - 2;
            sys->need_update = true;
            FUNC10(playlist);
        }
        return true;

    case KEY_ENTER:
    case '\r':
    case '\n':
        if (sys->pl_item_names.size)
        {
            FUNC4(playlist);
            FUNC5(playlist, sys->box_idx);
            FUNC10(playlist);
            sys->plidx_follow = true;
        }
        return true;
    }

    return false;
}