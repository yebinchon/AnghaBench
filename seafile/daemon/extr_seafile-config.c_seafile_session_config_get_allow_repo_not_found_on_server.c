
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafileSession ;


 int KEY_ALLOW_REPO_NOT_FOUND_ON_SERVER ;
 int seafile_session_config_get_bool (int *,int ) ;

gboolean
seafile_session_config_get_allow_repo_not_found_on_server(SeafileSession *session)
{
    return seafile_session_config_get_bool (session,
                                            KEY_ALLOW_REPO_NOT_FOUND_ON_SERVER);
}
