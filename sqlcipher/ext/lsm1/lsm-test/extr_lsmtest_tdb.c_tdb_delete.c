
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_5__ {int (* xDelete ) (TYPE_2__*,void*,int) ;} ;


 int stub1 (TYPE_2__*,void*,int) ;

int tdb_delete(TestDb *pDb, void *pKey, int nKey){
  return pDb->pMethods->xDelete(pDb, pKey, nKey);
}
