
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_9__ ;
typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_24__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_15__ ;
typedef struct TYPE_37__ TYPE_13__ ;
typedef struct TYPE_36__ TYPE_12__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


struct TYPE_42__ {TYPE_24__* pFuncArg; } ;
struct TYPE_41__ {int isCorrelated; scalar_t__ isTabFunc; } ;
struct SrcList_item {char* zName; TYPE_10__* pSelect; TYPE_3__ u1; TYPE_2__ fg; } ;
struct ExprList_item {int pExpr; } ;
struct TYPE_46__ {scalar_t__ mallocFailed; } ;
typedef TYPE_7__ sqlite3 ;
typedef int sNC ;
struct TYPE_47__ {TYPE_24__* pPartition; TYPE_24__* pOrderBy; struct TYPE_47__* pNextWin; } ;
typedef TYPE_8__ Window ;
struct TYPE_44__ {TYPE_12__* pNC; } ;
struct TYPE_48__ {TYPE_11__* pParse; TYPE_5__ u; } ;
typedef TYPE_9__ Walker ;
struct TYPE_45__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_43__ {scalar_t__ nExpr; } ;
struct TYPE_40__ {scalar_t__ nExpr; } ;
struct TYPE_39__ {TYPE_24__* pEList; } ;
struct TYPE_38__ {TYPE_4__* pEList; } ;
struct TYPE_37__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_36__ {int ncFlags; struct TYPE_36__* pNext; TYPE_1__ uNC; TYPE_6__* pSrcList; scalar_t__ nRef; TYPE_10__* pWinSelect; TYPE_11__* pParse; } ;
struct TYPE_35__ {char* zAuthContext; scalar_t__ nErr; TYPE_7__* db; } ;
struct TYPE_34__ {int selFlags; scalar_t__ pOrderBy; struct TYPE_34__* pPrior; TYPE_15__* pNext; TYPE_24__* pEList; TYPE_8__* pWinDefn; TYPE_6__* pSrc; int pWhere; int pHaving; TYPE_13__* pGroupBy; int pLimit; } ;
typedef TYPE_10__ Select ;
typedef TYPE_11__ Parse ;
typedef TYPE_12__ NameContext ;
typedef TYPE_13__ ExprList ;


 int EP_Agg ;
 scalar_t__ ExprHasProperty (int ,int ) ;
 scalar_t__ IN_RENAME_OBJECT ;
 int NC_AllowAgg ;
 int NC_AllowWin ;
 int NC_HasAgg ;
 int NC_MinMaxAgg ;
 int NC_UAggInfo ;
 int NC_UEList ;
 int NC_UUpsert ;
 int SF_Aggregate ;
 int SF_Converted ;
 int SF_Expanded ;
 int SF_MinMaxAgg ;
 int SF_Resolved ;
 int WRC_Abort ;
 int WRC_Prune ;
 int assert (int) ;
 int memset (TYPE_12__*,int ,int) ;
 scalar_t__ resolveCompoundOrderBy (TYPE_11__*,TYPE_10__*) ;
 scalar_t__ resolveOrderGroupBy (TYPE_12__*,TYPE_10__*,TYPE_13__*,char*) ;
 int sqlite3ErrorMsg (TYPE_11__*,char*) ;
 scalar_t__ sqlite3ResolveExprListNames (TYPE_12__*,TYPE_24__*) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_12__*,int ) ;
 int sqlite3ResolveSelectNames (TYPE_11__*,TYPE_10__*,TYPE_12__*) ;
 int sqlite3SelectPrep (TYPE_11__*,TYPE_10__*,TYPE_12__*) ;
 int sqlite3SelectWrongNumTermsError (TYPE_11__*,TYPE_15__*) ;

__attribute__((used)) static int resolveSelectStep(Walker *pWalker, Select *p){
  NameContext *pOuterNC;
  NameContext sNC;
  int isCompound;
  int nCompound;
  Parse *pParse;
  int i;
  ExprList *pGroupBy;
  Select *pLeftmost;
  sqlite3 *db;


  assert( p!=0 );
  if( p->selFlags & SF_Resolved ){
    return WRC_Prune;
  }
  pOuterNC = pWalker->u.pNC;
  pParse = pWalker->pParse;
  db = pParse->db;
  if( (p->selFlags & SF_Expanded)==0 ){
    sqlite3SelectPrep(pParse, p, pOuterNC);
    return (pParse->nErr || db->mallocFailed) ? WRC_Abort : WRC_Prune;
  }

  isCompound = p->pPrior!=0;
  nCompound = 0;
  pLeftmost = p;
  while( p ){
    assert( (p->selFlags & SF_Expanded)!=0 );
    assert( (p->selFlags & SF_Resolved)==0 );
    p->selFlags |= SF_Resolved;




    memset(&sNC, 0, sizeof(sNC));
    sNC.pParse = pParse;
    sNC.pWinSelect = p;
    if( sqlite3ResolveExprNames(&sNC, p->pLimit) ){
      return WRC_Abort;
    }







    if( p->selFlags & SF_Converted ){
      Select *pSub = p->pSrc->a[0].pSelect;
      assert( p->pSrc->nSrc==1 && p->pOrderBy );
      assert( pSub->pPrior && pSub->pOrderBy==0 );
      pSub->pOrderBy = p->pOrderBy;
      p->pOrderBy = 0;
    }



    for(i=0; i<p->pSrc->nSrc; i++){
      struct SrcList_item *pItem = &p->pSrc->a[i];
      if( pItem->pSelect ){
        NameContext *pNC;
        int nRef = 0;
        const char *zSavedContext = pParse->zAuthContext;






        for(pNC=pOuterNC; pNC; pNC=pNC->pNext) nRef += pNC->nRef;

        if( pItem->zName ) pParse->zAuthContext = pItem->zName;
        sqlite3ResolveSelectNames(pParse, pItem->pSelect, pOuterNC);
        pParse->zAuthContext = zSavedContext;
        if( pParse->nErr || db->mallocFailed ) return WRC_Abort;

        for(pNC=pOuterNC; pNC; pNC=pNC->pNext) nRef -= pNC->nRef;
        assert( pItem->fg.isCorrelated==0 && nRef<=0 );
        pItem->fg.isCorrelated = (nRef!=0);
      }
    }




    sNC.ncFlags = NC_AllowAgg|NC_AllowWin;
    sNC.pSrcList = p->pSrc;
    sNC.pNext = pOuterNC;


    if( sqlite3ResolveExprListNames(&sNC, p->pEList) ) return WRC_Abort;
    sNC.ncFlags &= ~NC_AllowWin;




    assert( (p->selFlags & SF_Aggregate)==0 );
    pGroupBy = p->pGroupBy;
    if( pGroupBy || (sNC.ncFlags & NC_HasAgg)!=0 ){
      assert( NC_MinMaxAgg==SF_MinMaxAgg );
      p->selFlags |= SF_Aggregate | (sNC.ncFlags&NC_MinMaxAgg);
    }else{
      sNC.ncFlags &= ~NC_AllowAgg;
    }



    if( p->pHaving && !pGroupBy ){
      sqlite3ErrorMsg(pParse, "a GROUP BY clause is required before HAVING");
      return WRC_Abort;
    }
    assert( (sNC.ncFlags & (NC_UAggInfo|NC_UUpsert))==0 );
    sNC.uNC.pEList = p->pEList;
    sNC.ncFlags |= NC_UEList;
    if( sqlite3ResolveExprNames(&sNC, p->pHaving) ) return WRC_Abort;
    if( sqlite3ResolveExprNames(&sNC, p->pWhere) ) return WRC_Abort;


    for(i=0; i<p->pSrc->nSrc; i++){
      struct SrcList_item *pItem = &p->pSrc->a[i];
      if( pItem->fg.isTabFunc
       && sqlite3ResolveExprListNames(&sNC, pItem->u1.pFuncArg)
      ){
        return WRC_Abort;
      }
    }




    sNC.pNext = 0;
    sNC.ncFlags |= NC_AllowAgg|NC_AllowWin;






    if( p->selFlags & SF_Converted ){
      Select *pSub = p->pSrc->a[0].pSelect;
      p->pOrderBy = pSub->pOrderBy;
      pSub->pOrderBy = 0;
    }
    if( isCompound<=nCompound
     && resolveOrderGroupBy(&sNC, p, p->pOrderBy, "ORDER")
    ){
      return WRC_Abort;
    }
    if( db->mallocFailed ){
      return WRC_Abort;
    }
    sNC.ncFlags &= ~NC_AllowWin;




    if( pGroupBy ){
      struct ExprList_item *pItem;

      if( resolveOrderGroupBy(&sNC, p, pGroupBy, "GROUP") || db->mallocFailed ){
        return WRC_Abort;
      }
      for(i=0, pItem=pGroupBy->a; i<pGroupBy->nExpr; i++, pItem++){
        if( ExprHasProperty(pItem->pExpr, EP_Agg) ){
          sqlite3ErrorMsg(pParse, "aggregate functions are not allowed in "
              "the GROUP BY clause");
          return WRC_Abort;
        }
      }
    }

    if( IN_RENAME_OBJECT ){
      Window *pWin;
      for(pWin=p->pWinDefn; pWin; pWin=pWin->pNextWin){
        if( sqlite3ResolveExprListNames(&sNC, pWin->pOrderBy)
         || sqlite3ResolveExprListNames(&sNC, pWin->pPartition)
        ){
          return WRC_Abort;
        }
      }
    }



    if( p->pNext && p->pEList->nExpr!=p->pNext->pEList->nExpr ){
      sqlite3SelectWrongNumTermsError(pParse, p->pNext);
      return WRC_Abort;
    }



    p = p->pPrior;
    nCompound++;
  }




  if( isCompound && resolveCompoundOrderBy(pParse, pLeftmost) ){
    return WRC_Abort;
  }

  return WRC_Prune;
}
