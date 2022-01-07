
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ExprList_item {int sortOrder; int pExpr; } ;
typedef int sqlite3 ;
struct TYPE_12__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_11__ {int * aSortOrder; int * aColl; } ;
struct TYPE_10__ {int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ KeyInfo ;
typedef TYPE_3__ ExprList ;


 int assert (int ) ;
 int sqlite3ExprNNCollSeq (TYPE_1__*,int ) ;
 TYPE_2__* sqlite3KeyInfoAlloc (int *,int,int) ;
 int sqlite3KeyInfoIsWriteable (TYPE_2__*) ;

KeyInfo *sqlite3KeyInfoFromExprList(
  Parse *pParse,
  ExprList *pList,
  int iStart,
  int nExtra
){
  int nExpr;
  KeyInfo *pInfo;
  struct ExprList_item *pItem;
  sqlite3 *db = pParse->db;
  int i;

  nExpr = pList->nExpr;
  pInfo = sqlite3KeyInfoAlloc(db, nExpr-iStart, nExtra+1);
  if( pInfo ){
    assert( sqlite3KeyInfoIsWriteable(pInfo) );
    for(i=iStart, pItem=pList->a+iStart; i<nExpr; i++, pItem++){
      pInfo->aColl[i-iStart] = sqlite3ExprNNCollSeq(pParse, pItem->pExpr);
      pInfo->aSortOrder[i-iStart] = pItem->sortOrder;
    }
  }
  return pInfo;
}
