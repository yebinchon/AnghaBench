
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ iOrderByCol; } ;
struct TYPE_26__ {TYPE_1__ x; } ;
struct ExprList_item {int sortOrder; TYPE_8__* pExpr; TYPE_2__ u; } ;
struct TYPE_27__ {TYPE_9__* pDfltColl; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_33__ {int zName; } ;
struct TYPE_32__ {int flags; } ;
struct TYPE_31__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_30__ {int * aSortOrder; TYPE_9__** aColl; } ;
struct TYPE_29__ {TYPE_3__* db; } ;
struct TYPE_28__ {TYPE_7__* pOrderBy; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ KeyInfo ;
typedef TYPE_7__ ExprList ;
typedef TYPE_8__ Expr ;
typedef TYPE_9__ CollSeq ;


 int EP_Collate ;
 int assert (int ) ;
 TYPE_9__* multiSelectCollSeq (TYPE_5__*,TYPE_4__*,scalar_t__) ;
 TYPE_8__* sqlite3ExprAddCollateString (TYPE_5__*,TYPE_8__*,int ) ;
 TYPE_9__* sqlite3ExprCollSeq (TYPE_5__*,TYPE_8__*) ;
 TYPE_6__* sqlite3KeyInfoAlloc (TYPE_3__*,int,int) ;
 int sqlite3KeyInfoIsWriteable (TYPE_6__*) ;

__attribute__((used)) static KeyInfo *multiSelectOrderByKeyInfo(Parse *pParse, Select *p, int nExtra){
  ExprList *pOrderBy = p->pOrderBy;
  int nOrderBy = p->pOrderBy->nExpr;
  sqlite3 *db = pParse->db;
  KeyInfo *pRet = sqlite3KeyInfoAlloc(db, nOrderBy+nExtra, 1);
  if( pRet ){
    int i;
    for(i=0; i<nOrderBy; i++){
      struct ExprList_item *pItem = &pOrderBy->a[i];
      Expr *pTerm = pItem->pExpr;
      CollSeq *pColl;

      if( pTerm->flags & EP_Collate ){
        pColl = sqlite3ExprCollSeq(pParse, pTerm);
      }else{
        pColl = multiSelectCollSeq(pParse, p, pItem->u.x.iOrderByCol-1);
        if( pColl==0 ) pColl = db->pDfltColl;
        pOrderBy->a[i].pExpr =
          sqlite3ExprAddCollateString(pParse, pTerm, pColl->zName);
      }
      assert( sqlite3KeyInfoIsWriteable(pRet) );
      pRet->aColl[i] = pColl;
      pRet->aSortOrder[i] = pOrderBy->a[i].sortOrder;
    }
  }

  return pRet;
}
