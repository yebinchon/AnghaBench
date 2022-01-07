
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int pWorker; int pEnv; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_11__ {int nData; int pData; } ;
struct TYPE_13__ {TYPE_1__ key; int eType; int flags; } ;
typedef TYPE_3__ MultiCursor ;


 int CURSOR_IGNORE_DELETE ;
 int LSM_OK ;
 int assert (int) ;
 int lsmMCursorClose (TYPE_3__*,int ) ;
 int lsmMCursorLast (TYPE_3__*) ;
 int lsmMCursorValue (TYPE_3__*,void**,int*) ;
 void* lsmMallocRc (int ,int,int*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memcpy (void*,void*,int) ;
 int multiCursorAddAll (TYPE_3__*,int) ;
 TYPE_3__* multiCursorNew (TYPE_2__*,int*) ;
 scalar_t__ rtIsSystem (int ) ;
 scalar_t__ rtIsWrite (int ) ;

int lsmSortedLoadFreelist(
  lsm_db *pDb,
  void **ppVal,
  int *pnVal
){
  MultiCursor *pCsr;
  int rc = LSM_OK;

  assert( pDb->pWorker );
  assert( *ppVal==0 && *pnVal==0 );

  pCsr = multiCursorNew(pDb, &rc);
  if( pCsr ){
    rc = multiCursorAddAll(pCsr, pDb->pWorker);
    pCsr->flags |= CURSOR_IGNORE_DELETE;
  }

  if( rc==LSM_OK ){
    rc = lsmMCursorLast(pCsr);
    if( rc==LSM_OK
     && rtIsWrite(pCsr->eType) && rtIsSystem(pCsr->eType)
     && pCsr->key.nData==8
     && 0==memcmp(pCsr->key.pData, "FREELIST", 8)
    ){
      void *pVal; int nVal;
      rc = lsmMCursorValue(pCsr, &pVal, &nVal);
      if( rc==LSM_OK ){
        *ppVal = lsmMallocRc(pDb->pEnv, nVal, &rc);
        if( *ppVal ){
          memcpy(*ppVal, pVal, nVal);
          *pnVal = nVal;
        }
      }
    }

    lsmMCursorClose(pCsr, 0);
  }

  return rc;
}
