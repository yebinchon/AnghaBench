
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdb_child_pid; } ;


 int SIGUSR1 ;
 int closeChildInfoPipe () ;
 int kill (int ,int ) ;
 int rdbRemoveTempFile (int ) ;
 TYPE_1__ server ;
 int updateDictResizePolicy () ;

void killRDBChild(void) {
    kill(server.rdb_child_pid,SIGUSR1);
    rdbRemoveTempFile(server.rdb_child_pid);
    closeChildInfoPipe();
    updateDictResizePolicy();
}
