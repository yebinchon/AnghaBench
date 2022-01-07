
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iValue; } ;
typedef TYPE_1__ wholenumber_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;


 int SQLITE_OK ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static int wholenumberColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  wholenumber_cursor *pCur = (wholenumber_cursor*)cur;
  sqlite3_result_int64(ctx, pCur->iValue);
  return SQLITE_OK;
}
