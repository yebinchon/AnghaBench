
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int _ (char*) ;
 int vlc_player_osd_Message (int *,int ,char const*) ;

void
vlc_player_osd_Program(vlc_player_t *player, const char *name)
{
    vlc_player_osd_Message(player, _("Program Service ID: %s"), name);
}
