
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 int assert_locked (int *) ;
 int libvlc_MediaListItemDeleted ;
 int libvlc_event_attach (int ,int ,int ,int *) ;
 int mlist_em (int *) ;
 int mlist_item_deleted ;

__attribute__((used)) static void
install_playlist_observer(libvlc_media_list_player_t * p_mlp)
{
    assert_locked(p_mlp);
    libvlc_event_attach(mlist_em(p_mlp), libvlc_MediaListItemDeleted, mlist_item_deleted, p_mlp);
}
