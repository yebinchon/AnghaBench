
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pWorkCtx; int (* xWork ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ lsm_db ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void sortedInvokeWorkHook(lsm_db *pDb){
  if( pDb->xWork ){
    pDb->xWork(pDb, pDb->pWorkCtx);
  }
}
