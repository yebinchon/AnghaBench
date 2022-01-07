
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_mlist; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int assert_locked (TYPE_1__*) ;
 int libvlc_MediaListItemDeleted ;
 int libvlc_event_detach (int ,int ,int ,TYPE_1__*) ;
 int mlist_em (TYPE_1__*) ;
 int mlist_item_deleted ;

__attribute__((used)) static void
uninstall_playlist_observer(libvlc_media_list_player_t * p_mlp)
{
    assert_locked(p_mlp);
    if (!p_mlp->p_mlist) return;
    libvlc_event_detach(mlist_em(p_mlp), libvlc_MediaListItemDeleted, mlist_item_deleted, p_mlp);
}
