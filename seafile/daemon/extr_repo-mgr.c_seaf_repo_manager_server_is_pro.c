
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int repo_mgr; } ;
typedef int SeafRepoManager ;


 int FALSE ;
 int SERVER_PROP_IS_PRO ;
 int TRUE ;
 int g_free (char*) ;
 TYPE_1__* seaf ;
 char* seaf_repo_manager_get_server_property (int ,char const*,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;

gboolean
seaf_repo_manager_server_is_pro (SeafRepoManager *mgr,
                                 const char *server_url)
{
    gboolean ret = FALSE;

    char *is_pro = seaf_repo_manager_get_server_property (seaf->repo_mgr,
                                                          server_url,
                                                          SERVER_PROP_IS_PRO);
    if (is_pro != ((void*)0) && strcasecmp (is_pro, "true") == 0)
        ret = TRUE;

    g_free (is_pro);
    return ret;
}
