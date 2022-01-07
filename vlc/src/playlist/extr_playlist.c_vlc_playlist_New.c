
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current; int has_prev; int has_next; int auto_preparse; int * libvlc; scalar_t__ idgen; int order; int repeat; int listeners; int randomizer; int items; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int vlc_object_t ;


 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ;
 int assert (int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int randomizer_Init (int *) ;
 scalar_t__ unlikely (int) ;
 int var_InheritBool (int *,char*) ;
 int vlc_list_init (int *) ;
 int * vlc_object_instance (int *) ;
 int vlc_playlist_PlayerInit (TYPE_1__*,int *) ;
 int vlc_vector_init (int *) ;

vlc_playlist_t *
vlc_playlist_New(vlc_object_t *parent)
{
    vlc_playlist_t *playlist = malloc(sizeof(*playlist));
    if (unlikely(!playlist))
        return ((void*)0);

    bool ok = vlc_playlist_PlayerInit(playlist, parent);
    if (unlikely(!ok))
    {
        free(playlist);
        return ((void*)0);
    }

    vlc_vector_init(&playlist->items);
    randomizer_Init(&playlist->randomizer);
    playlist->current = -1;
    playlist->has_prev = 0;
    playlist->has_next = 0;
    vlc_list_init(&playlist->listeners);
    playlist->repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;
    playlist->order = VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;
    playlist->idgen = 0;




    assert(parent);
    playlist->libvlc = vlc_object_instance(parent);
    playlist->auto_preparse = var_InheritBool(parent, "auto-preparse");


    return playlist;
}
