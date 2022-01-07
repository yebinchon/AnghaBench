
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo_mgr; } ;
typedef int GList ;
typedef int GError ;


 TYPE_1__* seaf ;
 int * seaf_repo_manager_get_file_sync_errors (int ,int,int) ;

GList *
seafile_get_file_sync_errors (int offset, int limit, GError **error)
{
    return seaf_repo_manager_get_file_sync_errors (seaf->repo_mgr, offset, limit);
}
