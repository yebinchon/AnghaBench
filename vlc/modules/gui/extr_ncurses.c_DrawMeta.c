
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_9__ {scalar_t__ color; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;
struct TYPE_10__ {int lock; int p_meta; } ;
typedef TYPE_3__ input_item_t ;


 int C_CATEGORY ;
 int C_DEFAULT ;
 int MainBoxWrite (TYPE_2__*,int ,char*,char const*) ;
 int VLC_META_TYPE_COUNT ;
 int color_set (int ,int *) ;
 int input_item_Release (TYPE_3__*) ;
 char* vlc_meta_Get (int ,int) ;
 char const* vlc_meta_TypeToLocalizedString (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 TYPE_3__* vlc_player_HoldCurrentMedia (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static int DrawMeta(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int l = 0;

    vlc_player_t *player = vlc_playlist_GetPlayer(sys->playlist);
    vlc_player_Lock(player);
    input_item_t *item = vlc_player_HoldCurrentMedia(player);
    vlc_player_Unlock(player);
    if (!item)
        return 0;

    vlc_mutex_lock(&item->lock);
    for (int i=0; i<VLC_META_TYPE_COUNT; i++) {
        const char *meta = vlc_meta_Get(item->p_meta, i);
        if (!meta || !*meta)
            continue;

        if (sys->color) color_set(C_CATEGORY, ((void*)0));
        MainBoxWrite(sys, l++, "  [%s]", vlc_meta_TypeToLocalizedString(i));
        if (sys->color) color_set(C_DEFAULT, ((void*)0));
        MainBoxWrite(sys, l++, "      %s", meta);
    }
    vlc_mutex_unlock(&item->lock);

    input_item_Release(item);

    return l;
}
