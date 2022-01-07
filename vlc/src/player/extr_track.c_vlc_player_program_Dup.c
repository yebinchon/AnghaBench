
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_program {int scrambled; int selected; int name; int group_id; } ;


 struct vlc_player_program* vlc_player_program_New (int ,int ) ;

struct vlc_player_program *
vlc_player_program_Dup(const struct vlc_player_program *src)
{
    struct vlc_player_program *dup =
        vlc_player_program_New(src->group_id, src->name);

    if (!dup)
        return ((void*)0);
    dup->selected = src->selected;
    dup->scrambled = src->scrambled;
    return dup;
}
