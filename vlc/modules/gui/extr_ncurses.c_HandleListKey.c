
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {scalar_t__ box_idx; scalar_t__ box_height; scalar_t__ box_type; int plidx_follow; int box_lines_total; int * playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 scalar_t__ BOX_PLAYLIST ;
 int CheckIdx (TYPE_2__*) ;







 scalar_t__ vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static bool HandleListKey(intf_thread_t *intf, int key)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    switch(key)
    {





    case 133: sys->box_idx = sys->box_lines_total - 1; break;
    case 132: sys->box_idx = 0; break;
    case 128: sys->box_idx--; break;
    case 134: sys->box_idx++; break;
    case 130:sys->box_idx -= sys->box_height; break;
    case 131:sys->box_idx += sys->box_height; break;
    default:
        return 0;
    }

    CheckIdx(sys);

    if (sys->box_type == BOX_PLAYLIST) {
        vlc_playlist_Lock(playlist);
        sys->plidx_follow =
            sys->box_idx == vlc_playlist_GetCurrentIndex(playlist);
        vlc_playlist_Unlock(playlist);
    }

    return 1;
}
