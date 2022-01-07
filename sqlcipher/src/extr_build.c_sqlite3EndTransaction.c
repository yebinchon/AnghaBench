
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_5__ {scalar_t__ db; } ;
typedef TYPE_1__ Parse ;


 int OP_AutoCommit ;
 int SQLITE_TRANSACTION ;
 int TK_COMMIT ;
 int TK_END ;
 int TK_ROLLBACK ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_1__*,int ,char*,int ,int ) ;
 int * sqlite3GetVdbe (TYPE_1__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;

void sqlite3EndTransaction(Parse *pParse, int eType){
  Vdbe *v;
  int isRollback;

  assert( pParse!=0 );
  assert( pParse->db!=0 );
  assert( eType==TK_COMMIT || eType==TK_END || eType==TK_ROLLBACK );
  isRollback = eType==TK_ROLLBACK;
  if( sqlite3AuthCheck(pParse, SQLITE_TRANSACTION,
       isRollback ? "ROLLBACK" : "COMMIT", 0, 0) ){
    return;
  }
  v = sqlite3GetVdbe(pParse);
  if( v ){
    sqlite3VdbeAddOp2(v, OP_AutoCommit, 1, isRollback);
  }
}
