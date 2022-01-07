
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_object_t ;


 int * VLC_OBJECT (int *) ;

vlc_object_t *
vlc_player_GetObject(vlc_player_t *player)
{
    return VLC_OBJECT(player);
}
