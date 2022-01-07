
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_52__ TYPE_8__ ;
typedef struct TYPE_51__ TYPE_7__ ;
typedef struct TYPE_50__ TYPE_6__ ;
typedef struct TYPE_49__ TYPE_5__ ;
typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_3__ ;
typedef struct TYPE_46__ TYPE_36__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;


struct TYPE_47__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_48__ {scalar_t__ iEphCsr; scalar_t__ regAccum; scalar_t__ regResult; int pFilter; TYPE_2__* pOwner; scalar_t__ iArgCol; struct TYPE_48__* pNextWin; int pOrderBy; int pPartition; scalar_t__ nBufferCol; } ;
typedef TYPE_4__ Window ;
typedef int Vdbe ;
struct TYPE_52__ {scalar_t__ nExpr; } ;
struct TYPE_51__ {scalar_t__ nMem; scalar_t__ nTab; TYPE_3__* db; } ;
struct TYPE_50__ {scalar_t__ pPrior; int selFlags; TYPE_5__* pSrc; scalar_t__ pOrderBy; scalar_t__ pEList; int * pHaving; TYPE_8__* pGroupBy; int * pWhere; TYPE_4__* pWin; } ;
struct TYPE_49__ {TYPE_36__* a; } ;
struct TYPE_46__ {TYPE_6__* pSelect; } ;
struct TYPE_44__ {int pList; } ;
struct TYPE_45__ {TYPE_1__ x; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ ExprList ;
typedef int Expr ;


 int OP_Null ;
 int OP_OpenDup ;
 int OP_OpenEphemeral ;
 int SF_Aggregate ;
 int SF_Expanded ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TK_INTEGER ;
 TYPE_8__* exprListAppendList (TYPE_7__*,TYPE_8__*,int ) ;
 int selectWindowRewriteEList (TYPE_7__*,TYPE_4__*,TYPE_5__*,scalar_t__,TYPE_8__**) ;
 scalar_t__ sqlite3ExpandSubquery (TYPE_7__*,TYPE_36__*) ;
 int * sqlite3ExprAlloc (TYPE_3__*,int ,int *,int ) ;
 int * sqlite3ExprDup (TYPE_3__*,int ,int ) ;
 TYPE_8__* sqlite3ExprListAppend (TYPE_7__*,TYPE_8__*,int *) ;
 scalar_t__ sqlite3ExprListCompare (TYPE_8__*,scalar_t__,int) ;
 int sqlite3ExprListDelete (TYPE_3__*,scalar_t__) ;
 TYPE_8__* sqlite3ExprListDup (TYPE_3__*,int ,int ) ;
 int * sqlite3GetVdbe (TYPE_7__*) ;
 int * sqlite3IntTokens ;
 int sqlite3SelectDelete (TYPE_3__*,TYPE_6__*) ;
 TYPE_6__* sqlite3SelectNew (TYPE_7__*,TYPE_8__*,TYPE_5__*,int *,TYPE_8__*,int *,TYPE_8__*,int ,int ) ;
 int sqlite3SelectPrep (TYPE_7__*,TYPE_6__*,int ) ;
 TYPE_5__* sqlite3SrcListAppend (TYPE_7__*,int ,int ,int ) ;
 int sqlite3SrcListAssignCursors (TYPE_7__*,TYPE_5__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,scalar_t__,scalar_t__) ;

int sqlite3WindowRewrite(Parse *pParse, Select *p){
  int rc = SQLITE_OK;
  if( p->pWin && p->pPrior==0 ){
    Vdbe *v = sqlite3GetVdbe(pParse);
    sqlite3 *db = pParse->db;
    Select *pSub = 0;
    SrcList *pSrc = p->pSrc;
    Expr *pWhere = p->pWhere;
    ExprList *pGroupBy = p->pGroupBy;
    Expr *pHaving = p->pHaving;
    ExprList *pSort = 0;

    ExprList *pSublist = 0;
    Window *pMWin = p->pWin;
    Window *pWin;

    p->pSrc = 0;
    p->pWhere = 0;
    p->pGroupBy = 0;
    p->pHaving = 0;




    pSort = sqlite3ExprListDup(db, pMWin->pPartition, 0);
    pSort = exprListAppendList(pParse, pSort, pMWin->pOrderBy);
    if( pSort && p->pOrderBy ){
      if( sqlite3ExprListCompare(pSort, p->pOrderBy, -1)==0 ){
        sqlite3ExprListDelete(db, p->pOrderBy);
        p->pOrderBy = 0;
      }
    }




    pMWin->iEphCsr = pParse->nTab++;
    pParse->nTab += 3;

    selectWindowRewriteEList(pParse, pMWin, pSrc, p->pEList, &pSublist);
    selectWindowRewriteEList(pParse, pMWin, pSrc, p->pOrderBy, &pSublist);
    pMWin->nBufferCol = (pSublist ? pSublist->nExpr : 0);




    pSublist = exprListAppendList(pParse, pSublist, pMWin->pPartition);
    pSublist = exprListAppendList(pParse, pSublist, pMWin->pOrderBy);





    for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
      pWin->iArgCol = (pSublist ? pSublist->nExpr : 0);
      pSublist = exprListAppendList(pParse, pSublist, pWin->pOwner->x.pList);
      if( pWin->pFilter ){
        Expr *pFilter = sqlite3ExprDup(db, pWin->pFilter, 0);
        pSublist = sqlite3ExprListAppend(pParse, pSublist, pFilter);
      }
      pWin->regAccum = ++pParse->nMem;
      pWin->regResult = ++pParse->nMem;
      sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regAccum);
    }







    if( pSublist==0 ){
      pSublist = sqlite3ExprListAppend(pParse, 0,
          sqlite3ExprAlloc(db, TK_INTEGER, &sqlite3IntTokens[0], 0)
      );
    }

    pSub = sqlite3SelectNew(
        pParse, pSublist, pSrc, pWhere, pGroupBy, pHaving, pSort, 0, 0
    );
    p->pSrc = sqlite3SrcListAppend(pParse, 0, 0, 0);
    if( p->pSrc ){
      p->pSrc->a[0].pSelect = pSub;
      sqlite3SrcListAssignCursors(pParse, p->pSrc);
      if( sqlite3ExpandSubquery(pParse, &p->pSrc->a[0]) ){
        rc = SQLITE_NOMEM;
      }else{
        pSub->selFlags |= SF_Expanded;
        p->selFlags &= ~SF_Aggregate;
        sqlite3SelectPrep(pParse, pSub, 0);
      }

      sqlite3VdbeAddOp2(v, OP_OpenEphemeral, pMWin->iEphCsr, pSublist->nExpr);
      sqlite3VdbeAddOp2(v, OP_OpenDup, pMWin->iEphCsr+1, pMWin->iEphCsr);
      sqlite3VdbeAddOp2(v, OP_OpenDup, pMWin->iEphCsr+2, pMWin->iEphCsr);
      sqlite3VdbeAddOp2(v, OP_OpenDup, pMWin->iEphCsr+3, pMWin->iEphCsr);
    }else{
      sqlite3SelectDelete(db, pSub);
    }
    if( db->mallocFailed ) rc = SQLITE_NOMEM;
  }

  return rc;
}
