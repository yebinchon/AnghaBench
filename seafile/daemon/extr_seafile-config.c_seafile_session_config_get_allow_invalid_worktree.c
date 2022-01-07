
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafileSession ;


 int KEY_ALLOW_INVALID_WORKTREE ;
 int seafile_session_config_get_bool (int *,int ) ;

gboolean
seafile_session_config_get_allow_invalid_worktree(SeafileSession *session)
{
    return seafile_session_config_get_bool (session, KEY_ALLOW_INVALID_WORKTREE);
}
