
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_program {int group_id; int selected; int scrambled; int name; } ;


 int free (struct vlc_player_program*) ;
 struct vlc_player_program* malloc (int) ;
 int vlc_player_program_DupTitle (int,char const*) ;

struct vlc_player_program *
vlc_player_program_New(int id, const char *name)
{
    struct vlc_player_program *prgm = malloc(sizeof(*prgm));
    if (!prgm)
        return ((void*)0);
    prgm->name = vlc_player_program_DupTitle(id, name);
    if (!prgm->name)
    {
        free(prgm);
        return ((void*)0);
    }
    prgm->group_id = id;
    prgm->selected = prgm->scrambled = 0;

    return prgm;
}
