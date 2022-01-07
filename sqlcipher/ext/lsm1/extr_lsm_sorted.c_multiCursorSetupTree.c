
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nTree; } ;
typedef TYPE_1__ MultiCursor ;


 int LSM_OK ;
 int assertCursorTree (TYPE_1__*) ;
 scalar_t__ mcursorLocationOk (TYPE_1__*,int ) ;
 int multiCursorAdvance (TYPE_1__*,int) ;
 int multiCursorAllocTree (TYPE_1__*) ;
 int multiCursorCacheKey (TYPE_1__*,int*) ;
 int multiCursorDoCompare (TYPE_1__*,int,int) ;

__attribute__((used)) static int multiCursorSetupTree(MultiCursor *pCsr, int bRev){
  int rc;

  rc = multiCursorAllocTree(pCsr);
  if( rc==LSM_OK ){
    int i;
    for(i=pCsr->nTree-1; i>0; i--){
      multiCursorDoCompare(pCsr, i, bRev);
    }
  }

  assertCursorTree(pCsr);
  multiCursorCacheKey(pCsr, &rc);

  if( rc==LSM_OK && mcursorLocationOk(pCsr, 0)==0 ){
    rc = multiCursorAdvance(pCsr, bRev);
  }
  return rc;
}
