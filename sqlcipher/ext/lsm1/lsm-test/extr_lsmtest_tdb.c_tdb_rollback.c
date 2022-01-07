
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_5__ {int (* xRollback ) (TYPE_2__*,int) ;} ;


 int stub1 (TYPE_2__*,int) ;

int tdb_rollback(TestDb *pDb, int iLevel){
  return pDb->pMethods->xRollback(pDb, iLevel);
}
