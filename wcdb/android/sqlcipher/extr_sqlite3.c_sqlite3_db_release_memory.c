
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


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int sqlite3BtreeEnterAll (TYPE_2__*) ;
 int sqlite3BtreeLeaveAll (TYPE_2__*) ;
 int * sqlite3BtreePager (int *) ;
 int sqlite3PagerShrink (int *) ;
 int sqlite3SafetyCheckOk (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_db_release_memory(sqlite3 *db){
  int i;




  sqlite3_mutex_enter(db->mutex);
  sqlite3BtreeEnterAll(db);
  for(i=0; i<db->nDb; i++){
    Btree *pBt = db->aDb[i].pBt;
    if( pBt ){
      Pager *pPager = sqlite3BtreePager(pBt);
      sqlite3PagerShrink(pPager);
    }
  }
  sqlite3BtreeLeaveAll(db);
  sqlite3_mutex_leave(db->mutex);
  return SQLITE_OK;
}
