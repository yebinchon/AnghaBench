
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafRepo ;


 int TRUE ;
 int g_free (char*) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 int seaf ;
 char* seafile_session_config_get_string (int ,char*) ;
 int seafile_session_config_set_string (int ,char*,char*) ;

__attribute__((used)) static gboolean
need_notify_sync (SeafRepo *repo)
{
    char *notify_setting = seafile_session_config_get_string(seaf, "notify_sync");
    if (notify_setting == ((void*)0)) {
        seafile_session_config_set_string(seaf, "notify_sync", "on");
        return TRUE;
    }

    gboolean result = (g_strcmp0(notify_setting, "on") == 0);
    g_free (notify_setting);
    return result;
}
