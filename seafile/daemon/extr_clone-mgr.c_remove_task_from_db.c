
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ SeafCloneManager ;


 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ sqlite_query_exec (int ,char*) ;

__attribute__((used)) static int
remove_task_from_db (SeafCloneManager *mgr, const char *repo_id)
{
    char sql[256];

    snprintf (sql, sizeof(sql),
              "DELETE FROM CloneTasks WHERE repo_id='%s'",
              repo_id);
    if (sqlite_query_exec (mgr->db, sql) < 0)
        return -1;

    snprintf (sql, sizeof(sql),
              "DELETE FROM CloneEncInfo WHERE repo_id='%s'",
              repo_id);
    if (sqlite_query_exec (mgr->db, sql) < 0)
        return -1;

    snprintf (sql, sizeof(sql),
              "DELETE FROM CloneVersionInfo WHERE repo_id='%s'",
              repo_id);
    if (sqlite_query_exec (mgr->db, sql) < 0)
        return -1;

    snprintf (sql, sizeof(sql),
              "DELETE FROM CloneTasksMoreInfo WHERE repo_id='%s'",
              repo_id);
    if (sqlite_query_exec (mgr->db, sql) < 0)
        return -1;

    return 0;
}
