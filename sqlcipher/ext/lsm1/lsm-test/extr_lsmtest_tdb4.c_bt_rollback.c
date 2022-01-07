
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int pBt; } ;
typedef TYPE_1__ BtDb ;


 int sqlite4BtRollback (int ,int) ;

__attribute__((used)) static int bt_rollback(TestDb *pTestDb, int iLvl){
  BtDb *p = (BtDb*)pTestDb;
  int rc = sqlite4BtRollback(p->pBt, iLvl);
  return rc;
}
