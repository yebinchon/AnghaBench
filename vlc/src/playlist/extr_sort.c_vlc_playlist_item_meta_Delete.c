
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_item_meta {int dummy; } ;


 int free (struct vlc_playlist_item_meta*) ;
 int vlc_playlist_item_meta_DestroyFields (struct vlc_playlist_item_meta*) ;

__attribute__((used)) static void
vlc_playlist_item_meta_Delete(struct vlc_playlist_item_meta *meta)
{
    vlc_playlist_item_meta_DestroyFields(meta);
    free(meta);
}
