
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pTable; int nKeyCol; scalar_t__ onError; scalar_t__* aiColumn; scalar_t__* aSortOrder; int pPartIdxWhere; int * azColl; TYPE_2__* aColExpr; } ;
struct TYPE_7__ {TYPE_1__* a; } ;
struct TYPE_6__ {int pExpr; } ;
typedef TYPE_3__ Index ;


 scalar_t__ XN_EXPR ;
 int assert (int) ;
 scalar_t__ sqlite3ExprCompare (int ,int ,int ,int) ;
 scalar_t__ sqlite3_stricmp (int ,int ) ;

__attribute__((used)) static int xferCompatibleIndex(Index *pDest, Index *pSrc){
  int i;
  assert( pDest && pSrc );
  assert( pDest->pTable!=pSrc->pTable );
  if( pDest->nKeyCol!=pSrc->nKeyCol ){
    return 0;
  }
  if( pDest->onError!=pSrc->onError ){
    return 0;
  }
  for(i=0; i<pSrc->nKeyCol; i++){
    if( pSrc->aiColumn[i]!=pDest->aiColumn[i] ){
      return 0;
    }
    if( pSrc->aiColumn[i]==XN_EXPR ){
      assert( pSrc->aColExpr!=0 && pDest->aColExpr!=0 );
      if( sqlite3ExprCompare(0, pSrc->aColExpr->a[i].pExpr,
                             pDest->aColExpr->a[i].pExpr, -1)!=0 ){
        return 0;
      }
    }
    if( pSrc->aSortOrder[i]!=pDest->aSortOrder[i] ){
      return 0;
    }
    if( sqlite3_stricmp(pSrc->azColl[i],pDest->azColl[i])!=0 ){
      return 0;
    }
  }
  if( sqlite3ExprCompare(0, pSrc->pPartIdxWhere, pDest->pPartIdxWhere, -1) ){
    return 0;
  }


  return 1;
}
