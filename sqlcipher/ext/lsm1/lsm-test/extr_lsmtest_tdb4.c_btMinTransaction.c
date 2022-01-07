
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pBt; } ;
typedef TYPE_1__ BtDb ;


 int SQLITE4_OK ;
 int sqlite4BtBegin (int ,int) ;
 int sqlite4BtTransactionLevel (int ) ;

__attribute__((used)) static int btMinTransaction(BtDb *p, int iMin, int *piLevel){
  int iLevel;
  int rc = SQLITE4_OK;

  iLevel = sqlite4BtTransactionLevel(p->pBt);
  if( iLevel<iMin ){
    rc = sqlite4BtBegin(p->pBt, iMin);
    *piLevel = iLevel;
  }else{
    *piLevel = -1;
  }

  return rc;
}
