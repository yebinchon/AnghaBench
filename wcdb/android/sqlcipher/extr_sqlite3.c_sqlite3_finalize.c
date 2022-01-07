
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int checkProfileCallback (TYPE_1__*,TYPE_2__*) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3LeaveMutexAndCloseZombie (TYPE_1__*) ;
 int sqlite3VdbeFinalize (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 scalar_t__ vdbeSafety (TYPE_2__*) ;

int sqlite3_finalize(sqlite3_stmt *pStmt){
  int rc;
  if( pStmt==0 ){


    rc = SQLITE_OK;
  }else{
    Vdbe *v = (Vdbe*)pStmt;
    sqlite3 *db = v->db;
    if( vdbeSafety(v) ) return SQLITE_MISUSE_BKPT;
    sqlite3_mutex_enter(db->mutex);
    checkProfileCallback(db, v);
    rc = sqlite3VdbeFinalize(v);
    rc = sqlite3ApiExit(db, rc);
    sqlite3LeaveMutexAndCloseZombie(db);
  }
  return rc;
}
