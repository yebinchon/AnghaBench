
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
typedef int gboolean ;
struct TYPE_4__ {TYPE_1__* clone_mgr; int repo_mgr; } ;
struct TYPE_3__ {int db; } ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* seaf ;
 scalar_t__ seaf_repo_manager_repo_exists (int ,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ sqlite_check_for_existence (int ,char*) ;

__attribute__((used)) static gboolean
is_repo_store_in_use (const char *repo_id)
{
    if (seaf_repo_manager_repo_exists (seaf->repo_mgr, repo_id))
        return TRUE;

    char sql[256];
    snprintf (sql, sizeof(sql), "SELECT 1 FROM CloneTasks WHERE repo_id='%s'",
              repo_id);
    if (sqlite_check_for_existence (seaf->clone_mgr->db, sql))
        return TRUE;

    return FALSE;
}
