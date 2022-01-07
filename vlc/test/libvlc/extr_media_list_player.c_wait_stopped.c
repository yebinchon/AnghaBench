
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 scalar_t__ libvlc_media_list_player_is_playing (int *) ;
 int sched_yield () ;

__attribute__((used)) static inline void wait_stopped(libvlc_media_list_player_t *mlp)
{
    while (libvlc_media_list_player_is_playing (mlp))
        sched_yield();
}
