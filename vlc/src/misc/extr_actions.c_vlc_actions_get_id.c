
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_action_id_t ;
struct name2action {int id; } ;


 int ACTIONID_NONE ;
 int ACTIONS_COUNT ;
 int actcmp ;
 struct name2action* bsearch (char const*,int ,int ,int,int ) ;
 int s_names2actions ;
 scalar_t__ strncmp (char const*,char*,int) ;

vlc_action_id_t
vlc_actions_get_id (const char *name)
{
    const struct name2action *act;

    if (strncmp (name, "key-", 4))
        return ACTIONID_NONE;
    name += 4;

    act = bsearch(name, s_names2actions, ACTIONS_COUNT, sizeof(*act), actcmp);
    return (act != ((void*)0)) ? act->id : ACTIONID_NONE;
}
