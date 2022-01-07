
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pAux; void (* xDelete ) (void*) ;void* pPtr; struct TYPE_4__* pNext; } ;
struct TYPE_3__ {scalar_t__ pAux; TYPE_2__* pAuxdata; } ;
typedef TYPE_1__ Fts5Cursor ;
typedef int Fts5Context ;
typedef TYPE_2__ Fts5Auxdata ;


 int SQLITE_OK ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 void stub1 (void*) ;

__attribute__((used)) static int fts5ApiSetAuxdata(
  Fts5Context *pCtx,
  void *pPtr,
  void(*xDelete)(void*)
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5Auxdata *pData;



  for(pData=pCsr->pAuxdata; pData; pData=pData->pNext){
    if( pData->pAux==pCsr->pAux ) break;
  }

  if( pData ){
    if( pData->xDelete ){
      pData->xDelete(pData->pPtr);
    }
  }else{
    int rc = SQLITE_OK;
    pData = (Fts5Auxdata*)sqlite3Fts5MallocZero(&rc, sizeof(Fts5Auxdata));
    if( pData==0 ){
      if( xDelete ) xDelete(pPtr);
      return rc;
    }
    pData->pAux = pCsr->pAux;
    pData->pNext = pCsr->pAuxdata;
    pCsr->pAuxdata = pData;
  }

  pData->xDelete = xDelete;
  pData->pPtr = pPtr;
  return SQLITE_OK;
}
