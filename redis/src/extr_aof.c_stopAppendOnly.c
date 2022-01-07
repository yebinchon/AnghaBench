
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; int aof_fd; int aof_selected_db; } ;


 scalar_t__ AOF_OFF ;
 int close (int) ;
 int flushAppendOnlyFile (int) ;
 int killAppendOnlyChild () ;
 int redis_fsync (int) ;
 TYPE_1__ server ;
 int serverAssert (int) ;

void stopAppendOnly(void) {
    serverAssert(server.aof_state != AOF_OFF);
    flushAppendOnlyFile(1);
    redis_fsync(server.aof_fd);
    close(server.aof_fd);

    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_state = AOF_OFF;
    killAppendOnlyChild();
}
