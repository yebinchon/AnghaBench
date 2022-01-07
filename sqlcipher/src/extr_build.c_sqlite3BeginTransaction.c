
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nDb; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_7__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;


 int OP_AutoCommit ;
 int OP_Transaction ;
 int SQLITE_TRANSACTION ;
 int TK_DEFERRED ;
 int TK_EXCLUSIVE ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_2__*,int ,char*,int ,int ) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeUsesBtree (int *,int) ;

void sqlite3BeginTransaction(Parse *pParse, int type){
  sqlite3 *db;
  Vdbe *v;
  int i;

  assert( pParse!=0 );
  db = pParse->db;
  assert( db!=0 );
  if( sqlite3AuthCheck(pParse, SQLITE_TRANSACTION, "BEGIN", 0, 0) ){
    return;
  }
  v = sqlite3GetVdbe(pParse);
  if( !v ) return;
  if( type!=TK_DEFERRED ){
    for(i=0; i<db->nDb; i++){
      sqlite3VdbeAddOp2(v, OP_Transaction, i, (type==TK_EXCLUSIVE)+1);
      sqlite3VdbeUsesBtree(v, i);
    }
  }
  sqlite3VdbeAddOp0(v, OP_AutoCommit);
}
