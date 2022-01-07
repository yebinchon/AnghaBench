
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_refcount; int object_lock; int mp_callback_lock; int seek_pending; int event_manager; int * p_mi; int thread; scalar_t__ seek_offset; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_instance_t ;


 int VLC_THREAD_PRIORITY_LOW ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int install_media_player_observer (TYPE_1__*) ;
 int libvlc_event_manager_destroy (int *) ;
 int libvlc_event_manager_init (int *,TYPE_1__*) ;
 int * libvlc_media_player_new (int *) ;
 int libvlc_media_player_release (int *) ;
 int libvlc_printerr (char*) ;
 int playlist_thread ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

libvlc_media_list_player_t *
libvlc_media_list_player_new(libvlc_instance_t * p_instance)
{
    libvlc_media_list_player_t * p_mlp;
    p_mlp = calloc( 1, sizeof(libvlc_media_list_player_t) );
    if (unlikely(p_mlp == ((void*)0)))
    {
        libvlc_printerr("Not enough memory");
        return ((void*)0);
    }

    p_mlp->i_refcount = 1;
    p_mlp->seek_offset = 0;
    vlc_mutex_init(&p_mlp->object_lock);
    vlc_mutex_init(&p_mlp->mp_callback_lock);
    vlc_cond_init(&p_mlp->seek_pending);
    libvlc_event_manager_init(&p_mlp->event_manager, p_mlp);


    p_mlp->p_mi = libvlc_media_player_new(p_instance);
    if( p_mlp->p_mi == ((void*)0) )
        goto error;
    install_media_player_observer(p_mlp);

    if (vlc_clone(&p_mlp->thread, playlist_thread, p_mlp,
                  VLC_THREAD_PRIORITY_LOW))
    {
        libvlc_media_player_release(p_mlp->p_mi);
        goto error;
    }

    return p_mlp;
error:
    libvlc_event_manager_destroy(&p_mlp->event_manager);
    vlc_cond_destroy(&p_mlp->seek_pending);
    vlc_mutex_destroy(&p_mlp->mp_callback_lock);
    vlc_mutex_destroy(&p_mlp->object_lock);
    free(p_mlp);
    return ((void*)0);
}
