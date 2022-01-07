
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdbe ;
typedef int Table ;
struct TYPE_3__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 int assert (int) ;
 int sqlite3ExprCodeGetColumnOfTable (int *,int *,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;

int sqlite3ExprCodeGetColumn(
  Parse *pParse,
  Table *pTab,
  int iColumn,
  int iTable,
  int iReg,
  u8 p5
){
  Vdbe *v = pParse->pVdbe;
  assert( v!=0 );
  sqlite3ExprCodeGetColumnOfTable(v, pTab, iTable, iColumn, iReg);
  if( p5 ){
    sqlite3VdbeChangeP5(v, p5);
  }
  return iReg;
}
