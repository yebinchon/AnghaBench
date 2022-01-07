
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int pExplain; int zSql; } ;
typedef TYPE_1__ explain_cursor ;


 int EXPLN_COLUMN_SQL ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int sqlite3_column_value (int ,int) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int explainColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  explain_cursor *pCur = (explain_cursor*)cur;
  if( i==EXPLN_COLUMN_SQL ){
    sqlite3_result_text(ctx, pCur->zSql, -1, SQLITE_TRANSIENT);
  }else{
    sqlite3_result_value(ctx, sqlite3_column_value(pCur->pExplain, i));
  }
  return SQLITE_OK;
}
