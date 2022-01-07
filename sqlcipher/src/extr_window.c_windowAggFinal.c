
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pMWin; int * pParse; } ;
typedef TYPE_1__ WindowCodeArg ;
struct TYPE_7__ {scalar_t__ regStartRowid; scalar_t__ eStart; int regResult; int csrApp; int regAccum; TYPE_5__* pFunc; scalar_t__ regApp; struct TYPE_7__* pNextWin; } ;
typedef TYPE_2__ Window ;
typedef int Vdbe ;
struct TYPE_8__ {int funcFlags; } ;
typedef int Parse ;


 int OP_AggFinal ;
 int OP_AggValue ;
 int OP_Column ;
 int OP_Copy ;
 int OP_Last ;
 int OP_Null ;
 int P4_FUNCDEF ;
 int SQLITE_FUNC_MINMAX ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_5__*,int ) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,scalar_t__) ;
 int windowArgCount (TYPE_2__*) ;

__attribute__((used)) static void windowAggFinal(WindowCodeArg *p, int bFin){
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  Vdbe *v = sqlite3GetVdbe(pParse);
  Window *pWin;

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    if( pMWin->regStartRowid==0
     && (pWin->pFunc->funcFlags & SQLITE_FUNC_MINMAX)
     && (pWin->eStart!=TK_UNBOUNDED)
    ){
      sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regResult);
      sqlite3VdbeAddOp1(v, OP_Last, pWin->csrApp);
      VdbeCoverage(v);
      sqlite3VdbeAddOp3(v, OP_Column, pWin->csrApp, 0, pWin->regResult);
      sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
    }else if( pWin->regApp ){
      assert( pMWin->regStartRowid==0 );
    }else{
      int nArg = windowArgCount(pWin);
      if( bFin ){
        sqlite3VdbeAddOp2(v, OP_AggFinal, pWin->regAccum, nArg);
        sqlite3VdbeAppendP4(v, pWin->pFunc, P4_FUNCDEF);
        sqlite3VdbeAddOp2(v, OP_Copy, pWin->regAccum, pWin->regResult);
        sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regAccum);
      }else{
        sqlite3VdbeAddOp3(v, OP_AggValue,pWin->regAccum,nArg,pWin->regResult);
        sqlite3VdbeAppendP4(v, pWin->pFunc, P4_FUNCDEF);
      }
    }
  }
}
