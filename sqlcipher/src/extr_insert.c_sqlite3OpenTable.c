
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_9__ {int zName; int tnum; int nCol; } ;
typedef TYPE_1__ Table ;
struct TYPE_10__ {int tnum; } ;
typedef int Parse ;
typedef TYPE_2__ Index ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 int IsVirtual (TYPE_1__*) ;
 int OP_OpenRead ;
 int OP_OpenWrite ;
 int VdbeComment (int *) ;
 int assert (int) ;
 int * sqlite3GetVdbe (int *) ;
 TYPE_2__* sqlite3PrimaryKeyIndex (TYPE_1__*) ;
 int sqlite3TableLock (int *,int,int ,int,int ) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int ,int) ;
 int sqlite3VdbeAddOp4Int (int *,int,int,int ,int,int ) ;
 int sqlite3VdbeSetP4KeyInfo (int *,TYPE_2__*) ;

void sqlite3OpenTable(
  Parse *pParse,
  int iCur,
  int iDb,
  Table *pTab,
  int opcode
){
  Vdbe *v;
  assert( !IsVirtual(pTab) );
  v = sqlite3GetVdbe(pParse);
  assert( opcode==OP_OpenWrite || opcode==OP_OpenRead );
  sqlite3TableLock(pParse, iDb, pTab->tnum,
                   (opcode==OP_OpenWrite)?1:0, pTab->zName);
  if( HasRowid(pTab) ){
    sqlite3VdbeAddOp4Int(v, opcode, iCur, pTab->tnum, iDb, pTab->nCol);
    VdbeComment((v, "%s", pTab->zName));
  }else{
    Index *pPk = sqlite3PrimaryKeyIndex(pTab);
    assert( pPk!=0 );
    assert( pPk->tnum==pTab->tnum );
    sqlite3VdbeAddOp3(v, opcode, iCur, pPk->tnum, iDb);
    sqlite3VdbeSetP4KeyInfo(pParse, pPk);
    VdbeComment((v, "%s", pTab->zName));
  }
}
