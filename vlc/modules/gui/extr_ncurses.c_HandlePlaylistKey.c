
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct vlc_playlist_sort_criterion {int order; int key; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int size; } ;
struct TYPE_8__ {int need_update; int plidx_follow; int box_idx; TYPE_1__ pl_item_names; int box_lines_total; int * playlist; } ;
typedef TYPE_3__ intf_sys_t ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;





 int SearchPlaylist (TYPE_3__*) ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;



 int VLC_PLAYLIST_SORT_KEY_TITLE ;
 int VLC_PLAYLIST_SORT_ORDER_ASCENDING ;
 int VLC_PLAYLIST_SORT_ORDER_DESCENDING ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_GetPlaybackOrder (int *) ;
 int vlc_playlist_GetPlaybackRepeat (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_PlayAt (int *,int ) ;
 int vlc_playlist_RemoveOne (int *,int ) ;
 int vlc_playlist_SetPlaybackOrder (int *,int) ;
 int vlc_playlist_SetPlaybackRepeat (int *,int) ;
 int vlc_playlist_Sort (int *,struct vlc_playlist_sort_criterion*,int) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static bool HandlePlaylistKey(intf_thread_t *intf, int key)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    switch(key)
    {

    case 'r':
        vlc_playlist_Lock(playlist);
        enum vlc_playlist_playback_order order_mode =
            vlc_playlist_GetPlaybackOrder(playlist);
        order_mode =
            order_mode == VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL
            ? VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM
            : VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;
        vlc_playlist_SetPlaybackOrder(playlist, order_mode);
        vlc_playlist_Unlock(playlist);
        return 1;
    case 'l':
    case 'R':
        vlc_playlist_Lock(playlist);
        enum vlc_playlist_playback_repeat repeat_mode =
            vlc_playlist_GetPlaybackRepeat(playlist);
        switch (repeat_mode)
        {
            case 128:
                repeat_mode = key == 'l'
                    ? 130
                    : 129;
                break;
            case 130:
                repeat_mode = key == 'l'
                    ? 128
                    : 129;
                break;
            case 129:
                repeat_mode = key == 'l'
                    ? 130
                    : 128;
                break;
        }
        vlc_playlist_SetPlaybackRepeat(playlist, repeat_mode);
        vlc_playlist_Unlock(playlist);
        return 1;


    case 'o':
    case 'O':
        vlc_playlist_Lock(playlist);
        struct vlc_playlist_sort_criterion criteria =
        {
            .key = VLC_PLAYLIST_SORT_KEY_TITLE,
            .order = key == 'o'
                ? VLC_PLAYLIST_SORT_ORDER_ASCENDING
                : VLC_PLAYLIST_SORT_ORDER_DESCENDING
        };
        vlc_playlist_Sort(playlist, &criteria, 1);
        sys->need_update = 1;
        vlc_playlist_Unlock(playlist);
        return 1;

    case ';':
        SearchPlaylist(sys);
        return 1;

    case 'g':
        vlc_playlist_Lock(playlist);
        sys->box_idx = vlc_playlist_GetCurrentIndex(playlist);
        vlc_playlist_Unlock(playlist);
        sys->plidx_follow = 1;
        return 1;


    case 'D':
    case 133:
    case 0x7f:
    case 132:
        if (sys->pl_item_names.size)
        {
            vlc_playlist_Lock(playlist);
            vlc_playlist_RemoveOne(playlist, sys->box_idx);
            if (sys->box_idx >= sys->box_lines_total - 1)
                sys->box_idx = sys->box_lines_total - 2;
            sys->need_update = 1;
            vlc_playlist_Unlock(playlist);
        }
        return 1;

    case 131:
    case '\r':
    case '\n':
        if (sys->pl_item_names.size)
        {
            vlc_playlist_Lock(playlist);
            vlc_playlist_PlayAt(playlist, sys->box_idx);
            vlc_playlist_Unlock(playlist);
            sys->plidx_follow = 1;
        }
        return 1;
    }

    return 0;
}
