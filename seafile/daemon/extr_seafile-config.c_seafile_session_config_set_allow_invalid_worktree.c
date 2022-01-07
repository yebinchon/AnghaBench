
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;
typedef int SeafileSession ;


 int KEY_ALLOW_INVALID_WORKTREE ;
 int seafile_session_config_set_string (int *,int ,char*) ;

int
seafile_session_config_set_allow_invalid_worktree(SeafileSession *session, gboolean val)
{
    return seafile_session_config_set_string(session, KEY_ALLOW_INVALID_WORKTREE,
                                             val ? "true" : "false");
}
