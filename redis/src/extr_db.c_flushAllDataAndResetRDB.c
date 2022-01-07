
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rdbSaveInfo ;
struct TYPE_2__ {int dirty; int rdb_child_pid; scalar_t__ saveparamslen; int rdb_filename; } ;


 int EMPTYDB_ASYNC ;
 scalar_t__ emptyDb (int,int,int *) ;
 int jemalloc_purge () ;
 int killRDBChild () ;
 int * rdbPopulateSaveInfo (int *) ;
 int rdbSave (int ,int *) ;
 TYPE_1__ server ;

void flushAllDataAndResetRDB(int flags) {
    server.dirty += emptyDb(-1,flags,((void*)0));
    if (server.rdb_child_pid != -1) killRDBChild();
    if (server.saveparamslen > 0) {


        int saved_dirty = server.dirty;
        rdbSaveInfo rsi, *rsiptr;
        rsiptr = rdbPopulateSaveInfo(&rsi);
        rdbSave(server.rdb_filename,rsiptr);
        server.dirty = saved_dirty;
    }
    server.dirty++;







}
