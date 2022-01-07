
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 int libvlc_media_list_player_stop_async (int *) ;
 int wait_stopped (int *) ;

__attribute__((used)) static inline void stop_and_wait(libvlc_media_list_player_t *mlp)
{
    libvlc_media_list_player_stop_async (mlp);
    wait_stopped (mlp);
}
