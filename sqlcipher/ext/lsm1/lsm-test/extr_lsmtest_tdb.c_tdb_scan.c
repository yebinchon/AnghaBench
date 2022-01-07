
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_5__ {int (* xScan ) (TYPE_2__*,void*,int,void*,int,void*,int,void (*) (void*,void*,int,void*,int)) ;} ;


 int stub1 (TYPE_2__*,void*,int,void*,int,void*,int,void (*) (void*,void*,int,void*,int)) ;

int tdb_scan(
  TestDb *pDb,
  void *pCtx,
  int bReverse,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2,
  void (*xCallback)(void *pCtx, void *pKey, int nKey, void *pVal, int nVal)
){
  return pDb->pMethods->xScan(
      pDb, pCtx, bReverse, pKey1, nKey1, pKey2, nKey2, xCallback
  );
}
