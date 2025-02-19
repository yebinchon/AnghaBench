
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nMaxOpen; TYPE_3__* pClosable; scalar_t__ bSwarm; TYPE_3__* aSrc; } ;
typedef TYPE_2__ UnionTab ;
struct TYPE_9__ {scalar_t__ nUser; struct TYPE_9__* pNextClosable; } ;
typedef TYPE_3__ UnionSrc ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
struct TYPE_10__ {size_t iTab; scalar_t__ pStmt; TYPE_1__ base; } ;
typedef TYPE_4__ UnionCsr ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_finalize (scalar_t__) ;
 int unionCloseSources (TYPE_2__*,int ) ;

__attribute__((used)) static int unionFinalizeCsrStmt(UnionCsr *pCsr){
  int rc = SQLITE_OK;
  if( pCsr->pStmt ){
    UnionTab *pTab = (UnionTab*)pCsr->base.pVtab;
    UnionSrc *pSrc = &pTab->aSrc[pCsr->iTab];
    rc = sqlite3_finalize(pCsr->pStmt);
    pCsr->pStmt = 0;
    if( pTab->bSwarm ){
      pSrc->nUser--;
      assert( pSrc->nUser>=0 );
      if( pSrc->nUser==0 ){
        pSrc->pNextClosable = pTab->pClosable;
        pTab->pClosable = pSrc;
      }
      unionCloseSources(pTab, pTab->nMaxOpen);
    }
  }
  return rc;
}
