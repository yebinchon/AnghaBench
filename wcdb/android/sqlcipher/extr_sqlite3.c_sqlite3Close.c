
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int mTrace; int magic; int mutex; int pTraceArg; int (* xTrace ) (int,int ,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_13__ {int pSqllogArg; int (* xSqllog ) (int ,TYPE_1__*,int ,int) ;} ;


 int SQLITE_BUSY ;
 int SQLITE_MAGIC_ZOMBIE ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_TRACE_CLOSE ;
 scalar_t__ connectionIsBusy (TYPE_1__*) ;
 int disconnectAllVtab (TYPE_1__*) ;
 int sqlite3ErrorWithMsg (TYPE_1__*,int,char*) ;
 TYPE_7__ sqlite3GlobalConfig ;
 int sqlite3LeaveMutexAndCloseZombie (TYPE_1__*) ;
 int sqlite3SafetyCheckSickOrOk (TYPE_1__*) ;
 int sqlite3VtabRollback (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int stub1 (int,int ,TYPE_1__*,int ) ;
 int stub2 (int ,TYPE_1__*,int ,int) ;

__attribute__((used)) static int sqlite3Close(sqlite3 *db, int forceZombie){
  if( !db ){


    return SQLITE_OK;
  }
  if( !sqlite3SafetyCheckSickOrOk(db) ){
    return SQLITE_MISUSE_BKPT;
  }
  sqlite3_mutex_enter(db->mutex);
  if( db->mTrace & SQLITE_TRACE_CLOSE ){
    db->xTrace(SQLITE_TRACE_CLOSE, db->pTraceArg, db, 0);
  }


  disconnectAllVtab(db);
  sqlite3VtabRollback(db);




  if( !forceZombie && connectionIsBusy(db) ){
    sqlite3ErrorWithMsg(db, SQLITE_BUSY, "unable to close due to unfinalized "
       "statements or unfinished backups");
    sqlite3_mutex_leave(db->mutex);
    return SQLITE_BUSY;
  }
  db->magic = SQLITE_MAGIC_ZOMBIE;
  sqlite3LeaveMutexAndCloseZombie(db);
  return SQLITE_OK;
}
