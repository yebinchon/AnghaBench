
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_7__ {int iPKey; } ;
typedef TYPE_1__ Table ;


 int HasRowid (TYPE_1__*) ;
 scalar_t__ IsVirtual (TYPE_1__*) ;
 int OP_Column ;
 int OP_Rowid ;
 int OP_VColumn ;
 int sqlite3ColumnDefault (int *,TYPE_1__*,int,int) ;
 int sqlite3ColumnOfIndex (int ,int) ;
 int sqlite3PrimaryKeyIndex (TYPE_1__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;

void sqlite3ExprCodeGetColumnOfTable(
  Vdbe *v,
  Table *pTab,
  int iTabCur,
  int iCol,
  int regOut
){
  if( pTab==0 ){
    sqlite3VdbeAddOp3(v, OP_Column, iTabCur, iCol, regOut);
    return;
  }
  if( iCol<0 || iCol==pTab->iPKey ){
    sqlite3VdbeAddOp2(v, OP_Rowid, iTabCur, regOut);
  }else{
    int op = IsVirtual(pTab) ? OP_VColumn : OP_Column;
    int x = iCol;
    if( !HasRowid(pTab) && !IsVirtual(pTab) ){
      x = sqlite3ColumnOfIndex(sqlite3PrimaryKeyIndex(pTab), iCol);
    }
    sqlite3VdbeAddOp3(v, op, iTabCur, x, regOut);
  }
  if( iCol>=0 ){
    sqlite3ColumnDefault(v, pTab, iCol, regOut);
  }
}
