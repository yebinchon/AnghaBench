
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdbe ;
struct TYPE_14__ {scalar_t__ pSelect; int nCol; TYPE_3__* pIndex; } ;
typedef TYPE_1__ Table ;
struct TYPE_16__ {int nColumn; int nKeyCol; scalar_t__ uniqNotNull; scalar_t__ pPartIdxWhere; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {scalar_t__ nested; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 int HasRowid (TYPE_1__*) ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_3__*) ;
 int OPFLAG_APPEND ;
 int OPFLAG_ISNOOP ;
 int OPFLAG_ISUPDATE ;
 int OPFLAG_LASTROWID ;
 int OPFLAG_NCHANGE ;
 int OPFLAG_SAVEPOSITION ;
 int OPFLAG_USESEEKRESULT ;
 int OP_IdxInsert ;
 int OP_Insert ;
 int OP_Integer ;
 int OP_IsNull ;
 int OP_MakeRecord ;
 int P4_TABLE ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int sqlite3GetTempReg (TYPE_2__*) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3ReleaseTempReg (TYPE_2__*,int) ;
 int sqlite3SetMakeRecordP5 (int *,TYPE_1__*) ;
 int sqlite3TableAffinity (int *,TYPE_1__*,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int ) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_1__*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;

void sqlite3CompleteInsertion(
  Parse *pParse,
  Table *pTab,
  int iDataCur,
  int iIdxCur,
  int regNewData,
  int *aRegIdx,
  int update_flags,
  int appendBias,
  int useSeekResult
){
  Vdbe *v;
  Index *pIdx;
  u8 pik_flags;
  int regData;
  int regRec;
  int i;
  u8 bAffinityDone = 0;

  assert( update_flags==0
       || update_flags==OPFLAG_ISUPDATE
       || update_flags==(OPFLAG_ISUPDATE|OPFLAG_SAVEPOSITION)
  );

  v = sqlite3GetVdbe(pParse);
  assert( v!=0 );
  assert( pTab->pSelect==0 );
  for(i=0, pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext, i++){
    if( aRegIdx[i]==0 ) continue;
    bAffinityDone = 1;
    if( pIdx->pPartIdxWhere ){
      sqlite3VdbeAddOp2(v, OP_IsNull, aRegIdx[i], sqlite3VdbeCurrentAddr(v)+2);
      VdbeCoverage(v);
    }
    pik_flags = (useSeekResult ? OPFLAG_USESEEKRESULT : 0);
    if( IsPrimaryKeyIndex(pIdx) && !HasRowid(pTab) ){
      assert( pParse->nested==0 );
      pik_flags |= OPFLAG_NCHANGE;
      pik_flags |= (update_flags & OPFLAG_SAVEPOSITION);
    }
    sqlite3VdbeAddOp4Int(v, OP_IdxInsert, iIdxCur+i, aRegIdx[i],
                         aRegIdx[i]+1,
                         pIdx->uniqNotNull ? pIdx->nKeyCol: pIdx->nColumn);
    sqlite3VdbeChangeP5(v, pik_flags);
  }
  if( !HasRowid(pTab) ) return;
  regData = regNewData + 1;
  regRec = sqlite3GetTempReg(pParse);
  sqlite3VdbeAddOp3(v, OP_MakeRecord, regData, pTab->nCol, regRec);
  sqlite3SetMakeRecordP5(v, pTab);
  if( !bAffinityDone ){
    sqlite3TableAffinity(v, pTab, 0);
  }
  if( pParse->nested ){
    pik_flags = 0;
  }else{
    pik_flags = OPFLAG_NCHANGE;
    pik_flags |= (update_flags?update_flags:OPFLAG_LASTROWID);
  }
  if( appendBias ){
    pik_flags |= OPFLAG_APPEND;
  }
  if( useSeekResult ){
    pik_flags |= OPFLAG_USESEEKRESULT;
  }
  sqlite3VdbeAddOp3(v, OP_Insert, iDataCur, regRec, regNewData);
  if( !pParse->nested ){
    sqlite3VdbeAppendP4(v, pTab, P4_TABLE);
  }
  sqlite3VdbeChangeP5(v, pik_flags);
}
