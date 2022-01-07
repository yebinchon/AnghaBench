
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vdbe ;
typedef int Token ;
struct TYPE_7__ {int nMem; int db; } ;
typedef TYPE_1__ Parse ;
typedef int Expr ;


 int OP_Vacuum ;
 int sqlite3ExprCode (TYPE_1__*,int *,int) ;
 int sqlite3ExprDelete (int ,int *) ;
 int sqlite3FindDb (int ,int *) ;
 int * sqlite3GetVdbe (TYPE_1__*) ;
 scalar_t__ sqlite3ResolveSelfReference (TYPE_1__*,int ,int ,int *,int ) ;
 int sqlite3TwoPartName (TYPE_1__*,int *,int *,int **) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeUsesBtree (int *,int) ;

void sqlite3Vacuum(Parse *pParse, Token *pNm, Expr *pInto){
  Vdbe *v = sqlite3GetVdbe(pParse);
  int iDb = 0;
  if( v==0 ) goto build_vacuum_end;
  if( pNm ){



    iDb = sqlite3TwoPartName(pParse, pNm, pNm, &pNm);
    if( iDb<0 ) goto build_vacuum_end;
  }
  if( iDb!=1 ){
    int iIntoReg = 0;
    if( pInto && sqlite3ResolveSelfReference(pParse,0,0,pInto,0)==0 ){
      iIntoReg = ++pParse->nMem;
      sqlite3ExprCode(pParse, pInto, iIntoReg);
    }
    sqlite3VdbeAddOp2(v, OP_Vacuum, iDb, iIntoReg);
    sqlite3VdbeUsesBtree(v, iDb);
  }
build_vacuum_end:
  sqlite3ExprDelete(pParse->db, pInto);
  return;
}
