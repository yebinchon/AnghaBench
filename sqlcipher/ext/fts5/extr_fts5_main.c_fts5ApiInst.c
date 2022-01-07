
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_6__ {int nInstCount; int* aInst; TYPE_1__ base; } ;
typedef int Fts5Table ;
typedef TYPE_2__ Fts5Cursor ;
typedef int Fts5Context ;


 scalar_t__ CsrFlagTest (TYPE_2__*,int ) ;
 int FTS5CSR_REQUIRE_INST ;
 int SQLITE_OK ;
 int SQLITE_RANGE ;
 int fts5CacheInstArray (TYPE_2__*) ;
 scalar_t__ fts5IsOffsetless (int *) ;

__attribute__((used)) static int fts5ApiInst(
  Fts5Context *pCtx,
  int iIdx,
  int *piPhrase,
  int *piCol,
  int *piOff
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  int rc = SQLITE_OK;
  if( CsrFlagTest(pCsr, FTS5CSR_REQUIRE_INST)==0
   || SQLITE_OK==(rc = fts5CacheInstArray(pCsr))
  ){
    if( iIdx<0 || iIdx>=pCsr->nInstCount ){
      rc = SQLITE_RANGE;






    }else{
      *piPhrase = pCsr->aInst[iIdx*3];
      *piCol = pCsr->aInst[iIdx*3 + 1];
      *piOff = pCsr->aInst[iIdx*3 + 2];
    }
  }
  return rc;
}
