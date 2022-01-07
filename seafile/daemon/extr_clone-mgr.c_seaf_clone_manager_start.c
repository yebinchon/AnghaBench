
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int db; int check_timer; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef int GCallback ;


 int CHECK_CONNECT_INTERVAL ;
 int check_connect_pulse ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 scalar_t__ on_repo_http_fetched ;
 int restart_task ;
 int seaf ;
 int seaf_timer_new (int ,TYPE_1__*,int) ;
 scalar_t__ sqlite_foreach_selected_row (int ,char*,int ,TYPE_1__*) ;

int
seaf_clone_manager_start (SeafCloneManager *mgr)
{
    mgr->check_timer = seaf_timer_new (check_connect_pulse, mgr,
                                       CHECK_CONNECT_INTERVAL * 1000);

    char *sql = "SELECT * FROM CloneTasks";
    if (sqlite_foreach_selected_row (mgr->db, sql, restart_task, mgr) < 0)
        return -1;

    g_signal_connect (seaf, "repo-http-fetched",
                      (GCallback)on_repo_http_fetched, mgr);

    return 0;
}
