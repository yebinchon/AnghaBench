
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sql ;
struct TYPE_6__ {char* repo_id; TYPE_1__* manager; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_2__ CloneTask ;


 int load_more_info_cb ;
 int snprintf (char*,int,char*,char*) ;
 int sqlite_foreach_selected_row (int ,char*,int ,TYPE_2__*) ;

__attribute__((used)) static void
load_clone_more_info (CloneTask *task)
{
    char sql[256];

    snprintf (sql, sizeof(sql),
              "SELECT more_info FROM CloneTasksMoreInfo WHERE repo_id='%s'",
              task->repo_id);

    sqlite_foreach_selected_row (task->manager->db, sql,
                                 load_more_info_cb, task);
}
