
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int ** vlc_player_vout_HoldAll (int *,size_t*) ;

__attribute__((used)) static vout_thread_t **GetVouts( libvlc_media_player_t *p_mi, size_t *n )
{
    vlc_player_t *player = p_mi->player;
    return vlc_player_vout_HoldAll(player, n);
}
