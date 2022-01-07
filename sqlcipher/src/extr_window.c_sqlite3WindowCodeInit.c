
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int regPart; int regOne; int regStartRowid; int regEndRowid; int csrApp; int iEphCsr; scalar_t__ eStart; int regApp; TYPE_7__* pFunc; TYPE_3__* pOwner; struct TYPE_17__* pNextWin; scalar_t__ eExclude; TYPE_1__* pPartition; } ;
typedef TYPE_4__ Window ;
typedef int Vdbe ;
struct TYPE_20__ {int funcFlags; char* zName; } ;
struct TYPE_19__ {int* aSortOrder; } ;
struct TYPE_18__ {int nMem; int nTab; } ;
struct TYPE_15__ {int * pList; } ;
struct TYPE_16__ {TYPE_2__ x; } ;
struct TYPE_14__ {int nExpr; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ KeyInfo ;
typedef TYPE_7__ FuncDef ;
typedef int ExprList ;


 int OP_Integer ;
 int OP_Null ;
 int OP_OpenDup ;
 int OP_OpenEphemeral ;
 int P4_KEYINFO ;
 int SQLITE_FUNC_MINMAX ;
 scalar_t__ TK_UNBOUNDED ;
 int assert (int) ;
 scalar_t__ first_valueName ;
 scalar_t__ lagName ;
 scalar_t__ leadName ;
 scalar_t__ nth_valueName ;
 int * sqlite3GetVdbe (TYPE_5__*) ;
 TYPE_6__* sqlite3KeyInfoFromExprList (TYPE_5__*,int *,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,int,int) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_6__*,int ) ;

void sqlite3WindowCodeInit(Parse *pParse, Window *pMWin){
  Window *pWin;
  Vdbe *v = sqlite3GetVdbe(pParse);



  if( pMWin->pPartition ){
    int nExpr = pMWin->pPartition->nExpr;
    pMWin->regPart = pParse->nMem+1;
    pParse->nMem += nExpr;
    sqlite3VdbeAddOp3(v, OP_Null, 0, pMWin->regPart, pMWin->regPart+nExpr-1);
  }

  pMWin->regOne = ++pParse->nMem;
  sqlite3VdbeAddOp2(v, OP_Integer, 1, pMWin->regOne);

  if( pMWin->eExclude ){
    pMWin->regStartRowid = ++pParse->nMem;
    pMWin->regEndRowid = ++pParse->nMem;
    pMWin->csrApp = pParse->nTab++;
    sqlite3VdbeAddOp2(v, OP_Integer, 1, pMWin->regStartRowid);
    sqlite3VdbeAddOp2(v, OP_Integer, 0, pMWin->regEndRowid);
    sqlite3VdbeAddOp2(v, OP_OpenDup, pMWin->csrApp, pMWin->iEphCsr);
    return;
  }

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *p = pWin->pFunc;
    if( (p->funcFlags & SQLITE_FUNC_MINMAX) && pWin->eStart!=TK_UNBOUNDED ){







      ExprList *pList = pWin->pOwner->x.pList;
      KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pList, 0, 0);
      pWin->csrApp = pParse->nTab++;
      pWin->regApp = pParse->nMem+1;
      pParse->nMem += 3;
      if( pKeyInfo && pWin->pFunc->zName[1]=='i' ){
        assert( pKeyInfo->aSortOrder[0]==0 );
        pKeyInfo->aSortOrder[0] = 1;
      }
      sqlite3VdbeAddOp2(v, OP_OpenEphemeral, pWin->csrApp, 2);
      sqlite3VdbeAppendP4(v, pKeyInfo, P4_KEYINFO);
      sqlite3VdbeAddOp2(v, OP_Integer, 0, pWin->regApp+1);
    }
    else if( p->zName==nth_valueName || p->zName==first_valueName ){


      pWin->regApp = pParse->nMem+1;
      pWin->csrApp = pParse->nTab++;
      pParse->nMem += 2;
      sqlite3VdbeAddOp2(v, OP_OpenDup, pWin->csrApp, pMWin->iEphCsr);
    }
    else if( p->zName==leadName || p->zName==lagName ){
      pWin->csrApp = pParse->nTab++;
      sqlite3VdbeAddOp2(v, OP_OpenDup, pWin->csrApp, pMWin->iEphCsr);
    }
  }
}
