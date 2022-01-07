
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int nStr; int zStr; scalar_t__ iRowid; } ;
typedef TYPE_1__ prefixes_cursor ;


 int SQLITE_OK ;
 int sqlite3_result_text (int *,int ,int ,int ) ;

__attribute__((used)) static int prefixesColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  prefixes_cursor *pCur = (prefixes_cursor*)cur;
  switch( i ){
    case 0:
      sqlite3_result_text(ctx, pCur->zStr, pCur->nStr - (int)pCur->iRowid,
                          0);
      break;
    default:
      sqlite3_result_text(ctx, pCur->zStr, pCur->nStr, 0);
      break;
  }
  return SQLITE_OK;
}
