
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; scalar_t__ aof_enabled; } ;


 scalar_t__ AOF_OFF ;
 int EMPTYDB_ASYNC ;
 int EMPTYDB_NO_FLAGS ;
 int flushAllDataAndResetRDB (int ) ;
 int restartAOFAfterSYNC () ;
 TYPE_1__ server ;
 int stopAppendOnly () ;

void RM_ResetDataset(int restart_aof, int async) {
    if (restart_aof && server.aof_state != AOF_OFF) stopAppendOnly();
    flushAllDataAndResetRDB(async? EMPTYDB_ASYNC: EMPTYDB_NO_FLAGS);
    if (server.aof_enabled && restart_aof) restartAOFAfterSYNC();
}
