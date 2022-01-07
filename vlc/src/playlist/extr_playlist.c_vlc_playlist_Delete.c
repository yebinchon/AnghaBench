
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int randomizer; int listeners; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int randomizer_Destroy (int *) ;
 int vlc_list_is_empty (int *) ;
 int vlc_playlist_ClearItems (TYPE_1__*) ;
 int vlc_playlist_PlayerDestroy (TYPE_1__*) ;

void
vlc_playlist_Delete(vlc_playlist_t *playlist)
{
    assert(vlc_list_is_empty(&playlist->listeners));

    vlc_playlist_PlayerDestroy(playlist);
    randomizer_Destroy(&playlist->randomizer);
    vlc_playlist_ClearItems(playlist);
    free(playlist);
}
