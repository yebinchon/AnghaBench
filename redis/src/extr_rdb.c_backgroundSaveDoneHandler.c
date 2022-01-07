
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdb_child_type; } ;




 int backgroundSaveDoneHandlerDisk (int,int) ;
 int backgroundSaveDoneHandlerSocket (int,int) ;
 TYPE_1__ server ;
 int serverPanic (char*) ;

void backgroundSaveDoneHandler(int exitcode, int bysignal) {
    switch(server.rdb_child_type) {
    case 129:
        backgroundSaveDoneHandlerDisk(exitcode,bysignal);
        break;
    case 128:
        backgroundSaveDoneHandlerSocket(exitcode,bysignal);
        break;
    default:
        serverPanic("Unknown RDB child type.");
        break;
    }
}
