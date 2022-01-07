
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mutex; TYPE_2__* pDisconnect; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_8__ {struct TYPE_8__* pNext; } ;
typedef TYPE_2__ VTable ;


 int assert (int ) ;
 int sqlite3BtreeHoldsAllMutexes (TYPE_1__*) ;
 int sqlite3ExpirePreparedStatements (TYPE_1__*,int ) ;
 int sqlite3VtabUnlock (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3VtabUnlockList(sqlite3 *db){
  VTable *p = db->pDisconnect;
  db->pDisconnect = 0;

  assert( sqlite3BtreeHoldsAllMutexes(db) );
  assert( sqlite3_mutex_held(db->mutex) );

  if( p ){
    sqlite3ExpirePreparedStatements(db, 0);
    do {
      VTable *pNext = p->pNext;
      sqlite3VtabUnlock(p);
      p = pNext;
    }while( p );
  }
}
