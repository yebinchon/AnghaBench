
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int Vdbe ;
struct TYPE_15__ {scalar_t__ pSchema; TYPE_3__* pIndex; int zName; int tnum; } ;
typedef TYPE_1__ Table ;
struct TYPE_17__ {scalar_t__ pSchema; int zName; int tnum; struct TYPE_17__* pNext; } ;
struct TYPE_16__ {int nTab; int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_3__*) ;
 scalar_t__ IsVirtual (TYPE_1__*) ;
 int OP_OpenRead ;
 int OP_OpenWrite ;
 int VdbeComment (int *) ;
 int assert (int) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3OpenTable (TYPE_2__*,int,int,TYPE_1__*,int) ;
 int sqlite3SchemaToIndex (int ,scalar_t__) ;
 int sqlite3TableLock (TYPE_2__*,int,int ,int,int ) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int ,int) ;
 int sqlite3VdbeChangeP5 (int *,scalar_t__) ;
 int sqlite3VdbeSetP4KeyInfo (TYPE_2__*,TYPE_3__*) ;

int sqlite3OpenTableAndIndices(
  Parse *pParse,
  Table *pTab,
  int op,
  u8 p5,
  int iBase,
  u8 *aToOpen,
  int *piDataCur,
  int *piIdxCur
){
  int i;
  int iDb;
  int iDataCur;
  Index *pIdx;
  Vdbe *v;

  assert( op==OP_OpenRead || op==OP_OpenWrite );
  assert( op==OP_OpenWrite || p5==0 );
  if( IsVirtual(pTab) ){



    return 0;
  }
  iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
  v = sqlite3GetVdbe(pParse);
  assert( v!=0 );
  if( iBase<0 ) iBase = pParse->nTab;
  iDataCur = iBase++;
  if( piDataCur ) *piDataCur = iDataCur;
  if( HasRowid(pTab) && (aToOpen==0 || aToOpen[0]) ){
    sqlite3OpenTable(pParse, iDataCur, iDb, pTab, op);
  }else{
    sqlite3TableLock(pParse, iDb, pTab->tnum, op==OP_OpenWrite, pTab->zName);
  }
  if( piIdxCur ) *piIdxCur = iBase;
  for(i=0, pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext, i++){
    int iIdxCur = iBase++;
    assert( pIdx->pSchema==pTab->pSchema );
    if( IsPrimaryKeyIndex(pIdx) && !HasRowid(pTab) ){
      if( piDataCur ) *piDataCur = iIdxCur;
      p5 = 0;
    }
    if( aToOpen==0 || aToOpen[i+1] ){
      sqlite3VdbeAddOp3(v, op, iIdxCur, pIdx->tnum, iDb);
      sqlite3VdbeSetP4KeyInfo(pParse, pIdx);
      sqlite3VdbeChangeP5(v, p5);
      VdbeComment((v, "%s", pIdx->zName));
    }
  }
  if( iBase>pParse->nTab ) pParse->nTab = iBase;
  return i;
}
