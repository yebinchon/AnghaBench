
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seek_offset; int mp_callback_lock; int seek_pending; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int mutex_cleanup_push (int *) ;
 int set_relative_playlist_position_and_play (TYPE_1__*,scalar_t__) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *playlist_thread(void *data)
{
    libvlc_media_list_player_t *mlp = data;

    vlc_mutex_lock(&mlp->mp_callback_lock);
    mutex_cleanup_push(&mlp->mp_callback_lock);

    for (;;)
    {
        int canc;

        while (mlp->seek_offset == 0)
            vlc_cond_wait(&mlp->seek_pending, &mlp->mp_callback_lock);

        canc = vlc_savecancel();
        set_relative_playlist_position_and_play(mlp, mlp->seek_offset);
        mlp->seek_offset = 0;
        vlc_restorecancel(canc);
    }

    vlc_cleanup_pop();
    vlc_assert_unreachable();
}
