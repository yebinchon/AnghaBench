
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pBt; } ;
typedef TYPE_1__ BtDb ;


 int SQLITE4_OK ;
 int assert (int) ;
 int sqlite4BtCommit (int ,int) ;
 int sqlite4BtRollback (int ,int) ;
 int sqlite4BtTransactionLevel (int ) ;

__attribute__((used)) static int btRestoreTransaction(BtDb *p, int iLevel, int rcin){
  int rc = rcin;
  if( iLevel>=0 ){
    if( rc==SQLITE4_OK ){
      rc = sqlite4BtCommit(p->pBt, iLevel);
    }else{
      sqlite4BtRollback(p->pBt, iLevel);
    }
    assert( iLevel==sqlite4BtTransactionLevel(p->pBt) );
  }
  return rc;
}
