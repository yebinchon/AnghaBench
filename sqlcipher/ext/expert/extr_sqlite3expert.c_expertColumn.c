
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_2__ {int pData; } ;
typedef TYPE_1__ ExpertCsr ;


 int SQLITE_OK ;
 int * sqlite3_column_value (int ,int) ;
 int sqlite3_result_value (int *,int *) ;

__attribute__((used)) static int expertColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  ExpertCsr *pCsr = (ExpertCsr*)cur;
  sqlite3_value *pVal;
  pVal = sqlite3_column_value(pCsr->pData, i);
  if( pVal ){
    sqlite3_result_value(ctx, pVal);
  }
  return SQLITE_OK;
}
