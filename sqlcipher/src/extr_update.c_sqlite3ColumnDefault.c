
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
typedef int Vdbe ;
struct TYPE_4__ {int nCol; TYPE_2__* aCol; int zName; int pSelect; } ;
typedef TYPE_1__ Table ;
struct TYPE_5__ {scalar_t__ affinity; int pDflt; int zName; } ;
typedef TYPE_2__ Column ;


 int ENC (int ) ;
 int OP_RealAffinity ;
 int P4_MEM ;
 scalar_t__ SQLITE_AFF_REAL ;
 int VdbeComment (int *) ;
 int assert (int) ;
 int sqlite3ValueFromExpr (int ,int ,int ,scalar_t__,int **) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAppendP4 (int *,int *,int ) ;
 int sqlite3VdbeDb (int *) ;

void sqlite3ColumnDefault(Vdbe *v, Table *pTab, int i, int iReg){
  assert( pTab!=0 );
  if( !pTab->pSelect ){
    sqlite3_value *pValue = 0;
    u8 enc = ENC(sqlite3VdbeDb(v));
    Column *pCol = &pTab->aCol[i];
    VdbeComment((v, "%s.%s", pTab->zName, pCol->zName));
    assert( i<pTab->nCol );
    sqlite3ValueFromExpr(sqlite3VdbeDb(v), pCol->pDflt, enc,
                         pCol->affinity, &pValue);
    if( pValue ){
      sqlite3VdbeAppendP4(v, pValue, P4_MEM);
    }
  }

  if( pTab->aCol[i].affinity==SQLITE_AFF_REAL ){
    sqlite3VdbeAddOp1(v, OP_RealAffinity, iReg);
  }

}
