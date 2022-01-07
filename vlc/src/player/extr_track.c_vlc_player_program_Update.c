
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_program {int * name; } ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int * vlc_player_program_DupTitle (int,char const*) ;

int
vlc_player_program_Update(struct vlc_player_program *prgm, int id,
                          const char *name)
{
    free((char *)prgm->name);
    prgm->name = vlc_player_program_DupTitle(id, name);
    return prgm->name != ((void*)0) ? VLC_SUCCESS : VLC_ENOMEM;
}
