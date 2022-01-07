
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int ** pLeafSelectStmts; int zName; int zDb; int db; } ;
typedef TYPE_1__ fulltext_vtab ;


 int LEAF_SELECT ;
 int MERGE_COUNT ;
 int SQLITE_OK ;
 int assert (int) ;
 int sql_prepare (int ,int ,int ,int **,int ) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static int sql_get_leaf_statement(fulltext_vtab *v, int idx,
                                  sqlite3_stmt **ppStmt){
  assert( idx>=-1 && idx<MERGE_COUNT );
  if( idx==-1 ){
    return sql_prepare(v->db, v->zDb, v->zName, ppStmt, LEAF_SELECT);
  }else if( v->pLeafSelectStmts[idx]==((void*)0) ){
    int rc = sql_prepare(v->db, v->zDb, v->zName, &v->pLeafSelectStmts[idx],
                         LEAF_SELECT);
    if( rc!=SQLITE_OK ) return rc;
  }else{
    int rc = sqlite3_reset(v->pLeafSelectStmts[idx]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pLeafSelectStmts[idx];
  return SQLITE_OK;
}
