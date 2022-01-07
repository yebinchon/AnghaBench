
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


 int load_enc_info_cb ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ sqlite_foreach_selected_row (int ,char*,int ,TYPE_2__*) ;

__attribute__((used)) static int
load_clone_enc_info (CloneTask *task)
{
    char sql[256];

    snprintf (sql, sizeof(sql),
              "SELECT enc_version, random_key FROM CloneEncInfo WHERE repo_id='%s'",
              task->repo_id);

    if (sqlite_foreach_selected_row (task->manager->db, sql,
                                     load_enc_info_cb, task) < 0)
        return -1;

    return 0;
}
