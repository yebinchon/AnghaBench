
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Vdbe ;
struct TYPE_19__ {int iDataCur; int pUpsertWhere; int pUpsertSet; int pUpsertSrc; } ;
typedef TYPE_2__ Upsert ;
struct TYPE_20__ {TYPE_1__* aCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_22__ {int nKeyCol; size_t* aiColumn; int zName; } ;
struct TYPE_21__ {int nMem; int * db; int * pVdbe; } ;
struct TYPE_18__ {int zName; } ;
typedef int SrcList ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Index ;


 scalar_t__ HasRowid (TYPE_3__*) ;
 int OE_Abort ;
 int OP_Column ;
 int OP_Found ;
 int OP_Halt ;
 int OP_IdxRowid ;
 int OP_SeekRowid ;
 int P4_STATIC ;
 int SQLITE_CORRUPT ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int VdbeNoopComment (int *) ;
 int assert (int) ;
 int sqlite3ColumnOfIndex (TYPE_5__*,size_t) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 TYPE_5__* sqlite3PrimaryKeyIndex (TYPE_3__*) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int * sqlite3SrcListDup (int *,int ,int ) ;
 int sqlite3Update (TYPE_4__*,int *,int ,int ,int ,int ,int ,TYPE_2__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int ,int,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeVerifyAbortable (int *,int ) ;

void sqlite3UpsertDoUpdate(
  Parse *pParse,
  Upsert *pUpsert,
  Table *pTab,
  Index *pIdx,
  int iCur
){
  Vdbe *v = pParse->pVdbe;
  sqlite3 *db = pParse->db;
  SrcList *pSrc;
  int iDataCur;

  assert( v!=0 );
  assert( pUpsert!=0 );
  VdbeNoopComment((v, "Begin DO UPDATE of UPSERT"));
  iDataCur = pUpsert->iDataCur;
  if( pIdx && iCur!=iDataCur ){
    if( HasRowid(pTab) ){
      int regRowid = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp2(v, OP_IdxRowid, iCur, regRowid);
      sqlite3VdbeAddOp3(v, OP_SeekRowid, iDataCur, 0, regRowid);
      VdbeCoverage(v);
      sqlite3ReleaseTempReg(pParse, regRowid);
    }else{
      Index *pPk = sqlite3PrimaryKeyIndex(pTab);
      int nPk = pPk->nKeyCol;
      int iPk = pParse->nMem+1;
      int i;
      pParse->nMem += nPk;
      for(i=0; i<nPk; i++){
        int k;
        assert( pPk->aiColumn[i]>=0 );
        k = sqlite3ColumnOfIndex(pIdx, pPk->aiColumn[i]);
        sqlite3VdbeAddOp3(v, OP_Column, iCur, k, iPk+i);
        VdbeComment((v, "%s.%s", pIdx->zName,
                    pTab->aCol[pPk->aiColumn[i]].zName));
      }
      sqlite3VdbeVerifyAbortable(v, OE_Abort);
      i = sqlite3VdbeAddOp4Int(v, OP_Found, iDataCur, 0, iPk, nPk);
      VdbeCoverage(v);
      sqlite3VdbeAddOp4(v, OP_Halt, SQLITE_CORRUPT, OE_Abort, 0,
            "corrupt database", P4_STATIC);
      sqlite3VdbeJumpHere(v, i);
    }
  }


  pSrc = sqlite3SrcListDup(db, pUpsert->pUpsertSrc, 0);
  sqlite3Update(pParse, pSrc, pUpsert->pUpsertSet,
      pUpsert->pUpsertWhere, OE_Abort, 0, 0, pUpsert);
  pUpsert->pUpsertSet = 0;
  pUpsert->pUpsertWhere = 0;
  VdbeNoopComment((v, "End DO UPDATE of UPSERT"));
}
