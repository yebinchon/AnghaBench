
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nInstCount; } ;
typedef TYPE_1__ Fts5Cursor ;
typedef int Fts5Context ;


 scalar_t__ CsrFlagTest (TYPE_1__*,int ) ;
 int FTS5CSR_REQUIRE_INST ;
 int SQLITE_OK ;
 int fts5CacheInstArray (TYPE_1__*) ;

__attribute__((used)) static int fts5ApiInstCount(Fts5Context *pCtx, int *pnInst){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  int rc = SQLITE_OK;
  if( CsrFlagTest(pCsr, FTS5CSR_REQUIRE_INST)==0
   || SQLITE_OK==(rc = fts5CacheInstArray(pCsr)) ){
    *pnInst = pCsr->nInstCount;
  }
  return rc;
}
