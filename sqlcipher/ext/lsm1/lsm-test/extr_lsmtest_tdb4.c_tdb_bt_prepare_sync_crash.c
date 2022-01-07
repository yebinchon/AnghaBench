
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_7__ {scalar_t__ bCrash; int nCrashSync; } ;
struct TYPE_5__ {scalar_t__ xClose; } ;
typedef TYPE_3__ BtDb ;


 int assert (int) ;
 scalar_t__ bt_close ;

void tdb_bt_prepare_sync_crash(TestDb *pTestDb, int iSync){
  BtDb *p = (BtDb*)pTestDb;
  assert( pTestDb->pMethods->xClose==bt_close );
  assert( p->bCrash==0 );
  p->nCrashSync = iSync;
}
