
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_item_meta {int dummy; } ;


 int free (struct vlc_playlist_item_meta**) ;
 int vlc_playlist_item_meta_Delete (struct vlc_playlist_item_meta*) ;

__attribute__((used)) static void
vlc_playlist_DeleteMetaArray(struct vlc_playlist_item_meta *array[],
                             size_t count)
{
    for (size_t i = 0; i < count; ++i)
        vlc_playlist_item_meta_Delete(array[i]);
    free(array);
}
