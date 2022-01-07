
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int intf_thread_t ;
typedef int input_item_t ;


 int free (char*) ;
 char* input_item_GetURI (int *) ;
 int strcmp (char*,char*) ;
 char* var_CreateGetString (int *,char*) ;
 size_t vlc_playlist_Count (int *) ;
 int * vlc_playlist_Get (int *,size_t) ;
 int vlc_playlist_PlayAt (int *,size_t) ;
 int * vlc_playlist_item_GetMedia (int *) ;

__attribute__((used)) static inline void
playlist_bookmark_Play(intf_thread_t *intf,
                       vlc_playlist_t *playlist, char *name)
{
    char *bookmark_uri = var_CreateGetString(intf, name);
    size_t count = vlc_playlist_Count(playlist);
    size_t i;
    for (i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = vlc_playlist_Get(playlist, i);
        input_item_t *item = vlc_playlist_item_GetMedia(plitem);
        char *item_uri = input_item_GetURI(item);
        if (!strcmp(bookmark_uri, item_uri))
            break;
        free(item_uri);
    }
    if (i != count)
        vlc_playlist_PlayAt(playlist, i);
    free(bookmark_uri);
}
