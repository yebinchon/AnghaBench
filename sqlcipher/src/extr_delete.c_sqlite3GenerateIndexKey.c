
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_16__ {int nKeyCol; int nColumn; scalar_t__* aiColumn; TYPE_1__* pTable; scalar_t__ pPartIdxWhere; scalar_t__ uniqNotNull; } ;
struct TYPE_15__ {int iSelfTab; int db; int * pVdbe; } ;
struct TYPE_14__ {scalar_t__ pSelect; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 int OP_MakeRecord ;
 int OP_RealAffinity ;
 int P4_TRANSIENT ;
 int SQLITE_JUMPIFNULL ;
 scalar_t__ XN_EXPR ;
 int sqlite3ExprCodeLoadIndexColumn (TYPE_2__*,TYPE_3__*,int,int,int) ;
 int sqlite3ExprIfFalseDup (TYPE_2__*,scalar_t__,int,int ) ;
 int sqlite3GetTempRange (TYPE_2__*,int) ;
 char* sqlite3IndexAffinityStr (int ,TYPE_3__*) ;
 int sqlite3ReleaseTempRange (TYPE_2__*,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char const*,int ) ;
 int sqlite3VdbeDeletePriorOpcode (int *,int ) ;
 int sqlite3VdbeMakeLabel (TYPE_2__*) ;

int sqlite3GenerateIndexKey(
  Parse *pParse,
  Index *pIdx,
  int iDataCur,
  int regOut,
  int prefixOnly,
  int *piPartIdxLabel,
  Index *pPrior,
  int regPrior
){
  Vdbe *v = pParse->pVdbe;
  int j;
  int regBase;
  int nCol;

  if( piPartIdxLabel ){
    if( pIdx->pPartIdxWhere ){
      *piPartIdxLabel = sqlite3VdbeMakeLabel(pParse);
      pParse->iSelfTab = iDataCur + 1;
      sqlite3ExprIfFalseDup(pParse, pIdx->pPartIdxWhere, *piPartIdxLabel,
                            SQLITE_JUMPIFNULL);
      pParse->iSelfTab = 0;
    }else{
      *piPartIdxLabel = 0;
    }
  }
  nCol = (prefixOnly && pIdx->uniqNotNull) ? pIdx->nKeyCol : pIdx->nColumn;
  regBase = sqlite3GetTempRange(pParse, nCol);
  if( pPrior && (regBase!=regPrior || pPrior->pPartIdxWhere) ) pPrior = 0;
  for(j=0; j<nCol; j++){
    if( pPrior
     && pPrior->aiColumn[j]==pIdx->aiColumn[j]
     && pPrior->aiColumn[j]!=XN_EXPR
    ){

      continue;
    }
    sqlite3ExprCodeLoadIndexColumn(pParse, pIdx, iDataCur, j, regBase+j);






    sqlite3VdbeDeletePriorOpcode(v, OP_RealAffinity);
  }
  if( regOut ){
    sqlite3VdbeAddOp3(v, OP_MakeRecord, regBase, nCol, regOut);
    if( pIdx->pTable->pSelect ){
      const char *zAff = sqlite3IndexAffinityStr(pParse->db, pIdx);
      sqlite3VdbeChangeP4(v, -1, zAff, P4_TRANSIENT);
    }
  }
  sqlite3ReleaseTempRange(pParse, regBase, nCol);
  return regBase;
}
