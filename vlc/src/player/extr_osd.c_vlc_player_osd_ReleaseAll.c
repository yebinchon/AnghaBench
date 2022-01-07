
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;


 int free (int **) ;
 int vout_Release (int *) ;

__attribute__((used)) static void
vlc_player_osd_ReleaseAll(vlc_player_t *player, vout_thread_t **vouts,
                            size_t count)
{
    for (size_t i = 0; i < count; ++i)
        vout_Release(vouts[i]);
    free(vouts);
    (void) player;
}
