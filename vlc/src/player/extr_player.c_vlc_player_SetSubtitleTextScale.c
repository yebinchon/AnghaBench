
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int assert (int) ;
 int var_SetInteger (int *,char*,unsigned int) ;

void
vlc_player_SetSubtitleTextScale(vlc_player_t *player, unsigned scale)
{
    assert(scale >= 10 && scale <= 500);
    var_SetInteger(player, "sub-text-scale", scale);
}
