
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_10__ {int box_type; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 int BOX_BROWSE ;
 int BOX_NONE ;
 int BOX_OPEN ;
 int BOX_PLAYLIST ;
 int BOX_SEARCH ;
 int ChangePosition (int *,double) ;
 scalar_t__ HandleBrowseKey (TYPE_1__*,int) ;
 int HandleCommonKey (TYPE_1__*,int *,int) ;
 int HandleEditBoxKey (TYPE_1__*,int,int) ;
 scalar_t__ HandleListKey (TYPE_1__*,int) ;
 scalar_t__ HandlePlaylistKey (TYPE_1__*,int) ;





 int getch () ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void HandleKey(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int key = getch();
    int box = sys->box_type;

    vlc_player_t *player = vlc_playlist_GetPlayer(sys->playlist);

    if (key == -1)
        return;

    if (box == BOX_SEARCH || box == BOX_OPEN) {
        HandleEditBoxKey(intf, key, sys->box_type);
        return;
    }

    if (box == BOX_NONE)
        switch(key)
        {



        case 131: ChangePosition(player, +.99); return;
        case 130: ChangePosition(player, -1.0); return;
        case 128: ChangePosition(player, +0.05); return;
        case 132: ChangePosition(player, -0.05); return;
        default: HandleCommonKey(intf, player, key); return;
        }

    if (box == BOX_BROWSE && HandleBrowseKey(intf, key))
        return;

    if (box == BOX_PLAYLIST && HandlePlaylistKey(intf, key))
        return;

    if (HandleListKey(intf, key))
        return;

    HandleCommonKey(intf, player, key);
}
