
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ VLC_SUCCESS ;
 int * roles ;
 scalar_t__ var_SetString (int *,char*,int ) ;

int libvlc_media_player_set_role(libvlc_media_player_t *mp, unsigned role)
{
    if (role >= ARRAY_SIZE(roles)
     || var_SetString(mp, "role", roles[role]) != VLC_SUCCESS)
        return -1;
    return 0;
}
