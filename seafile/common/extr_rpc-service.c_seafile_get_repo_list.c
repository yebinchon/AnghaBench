
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo_mgr; } ;
typedef int GList ;
typedef int GError ;


 int * convert_repo_list (int *) ;
 int g_list_free (int *) ;
 TYPE_1__* seaf ;
 int * seaf_repo_manager_get_repo_list (int ,int,int) ;

GList*
seafile_get_repo_list (int start, int limit, GError **error)
{
    GList *repos = seaf_repo_manager_get_repo_list(seaf->repo_mgr, start, limit);
    GList *ret = ((void*)0);

    ret = convert_repo_list (repos);

    g_list_free (repos);

    return ret;
}
