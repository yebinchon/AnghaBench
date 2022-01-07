
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_7__ {size_t size; int * data; } ;
struct TYPE_9__ {int box_idx; TYPE_1__ pl_item_names; scalar_t__ color; scalar_t__ plidx_follow; scalar_t__ need_update; int * playlist; } ;
typedef TYPE_3__ intf_sys_t ;


 scalar_t__ C_DEFAULT ;
 scalar_t__ C_PLAYLIST_1 ;
 int MainBoxWrite (TYPE_3__*,size_t,char*,char,int ) ;
 int PlaylistRebuild (TYPE_2__*) ;
 int color_set (scalar_t__,int *) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int DrawPlaylist(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    vlc_playlist_Lock(playlist);
    ssize_t cur_idx = vlc_playlist_GetCurrentIndex(playlist);
    if (sys->need_update)
        PlaylistRebuild(intf);
    vlc_playlist_Unlock(playlist);

    if (sys->plidx_follow)
        sys->box_idx = cur_idx == -1 ? 0 : cur_idx;

    for (size_t i = 0; i < sys->pl_item_names.size; i++)
    {
        if (sys->color)
            color_set(i%3 + C_PLAYLIST_1, ((void*)0));

        MainBoxWrite(sys, i, "%c %s",
                (ssize_t)i == cur_idx ? '>' : ' ',
                sys->pl_item_names.data[i]);

        if (sys->color)
            color_set(C_DEFAULT, ((void*)0));
    }

    return sys->pl_item_names.size;
}
