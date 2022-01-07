
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_4__ {int pBt; scalar_t__ bFastInsert; } ;
typedef TYPE_1__ BtDb ;


 int BT_CONTROL_FAST_INSERT_OP ;
 int SQLITE4_OK ;
 int btMinTransaction (TYPE_1__*,int,int*) ;
 int btRestoreTransaction (TYPE_1__*,int,int) ;
 int sqlite4BtControl (int ,int ,int ) ;
 int sqlite4BtReplace (int ,void*,int,void*,int) ;

__attribute__((used)) static int bt_write(TestDb *pTestDb, void *pK, int nK, void *pV, int nV){
  BtDb *p = (BtDb*)pTestDb;
  int iLevel;
  int rc;

  rc = btMinTransaction(p, 2, &iLevel);
  if( rc==SQLITE4_OK ){
    if( p->bFastInsert ) sqlite4BtControl(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
    rc = sqlite4BtReplace(p->pBt, pK, nK, pV, nV);
    rc = btRestoreTransaction(p, iLevel, rc);
  }
  return rc;
}
