
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_item_meta {scalar_t__ url; scalar_t__ genre; scalar_t__ album_artist; scalar_t__ album; scalar_t__ artist; scalar_t__ title_or_name; } ;


 int free (void*) ;

__attribute__((used)) static void
vlc_playlist_item_meta_DestroyFields(struct vlc_playlist_item_meta *meta)
{
    free((void *) meta->title_or_name);
    free((void *) meta->artist);
    free((void *) meta->album);
    free((void *) meta->album_artist);
    free((void *) meta->genre);
    free((void *) meta->url);
}
