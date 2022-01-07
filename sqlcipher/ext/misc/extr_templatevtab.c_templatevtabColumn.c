
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iRowid; } ;
typedef TYPE_1__ templatevtab_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;


 int SQLITE_OK ;

 int TEMPLATEVTAB_B ;
 int assert (int) ;
 int sqlite3_result_int (int *,int ) ;

__attribute__((used)) static int templatevtabColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  templatevtab_cursor *pCur = (templatevtab_cursor*)cur;
  switch( i ){
    case 128:
      sqlite3_result_int(ctx, 1000 + pCur->iRowid);
      break;
    default:
      assert( i==TEMPLATEVTAB_B );
      sqlite3_result_int(ctx, 2000 + pCur->iRowid);
      break;
  }
  return SQLITE_OK;
}
