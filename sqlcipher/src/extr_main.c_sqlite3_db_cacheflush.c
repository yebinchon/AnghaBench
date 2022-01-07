
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nDb; int mutex; TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_7__ {int * pBt; } ;
typedef int Pager ;
typedef int Btree ;


 int SQLITE_BUSY ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int sqlite3BtreeEnterAll (TYPE_2__*) ;
 scalar_t__ sqlite3BtreeIsInTrans (int *) ;
 int sqlite3BtreeLeaveAll (TYPE_2__*) ;
 int * sqlite3BtreePager (int *) ;
 int sqlite3PagerFlush (int *) ;
 int sqlite3SafetyCheckOk (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_db_cacheflush(sqlite3 *db){
  int i;
  int rc = SQLITE_OK;
  int bSeenBusy = 0;




  sqlite3_mutex_enter(db->mutex);
  sqlite3BtreeEnterAll(db);
  for(i=0; rc==SQLITE_OK && i<db->nDb; i++){
    Btree *pBt = db->aDb[i].pBt;
    if( pBt && sqlite3BtreeIsInTrans(pBt) ){
      Pager *pPager = sqlite3BtreePager(pBt);
      rc = sqlite3PagerFlush(pPager);
      if( rc==SQLITE_BUSY ){
        bSeenBusy = 1;
        rc = SQLITE_OK;
      }
    }
  }
  sqlite3BtreeLeaveAll(db);
  sqlite3_mutex_leave(db->mutex);
  return ((rc==SQLITE_OK && bSeenBusy) ? SQLITE_BUSY : rc);
}
