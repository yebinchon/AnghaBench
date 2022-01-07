
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_3__ {scalar_t__ iRowid; size_t iDb; int * aVal; int * azDb; } ;
typedef TYPE_1__ memstat_cursor ;
struct TYPE_4__ {int mNull; int zName; } ;






 scalar_t__ MSV_NROW ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 TYPE_2__* aMemstatColumn ;
 int assert (int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int memstatColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int iCol
){
  memstat_cursor *pCur = (memstat_cursor*)cur;
  int i;
  assert( pCur->iRowid>0 && pCur->iRowid<=MSV_NROW );
  i = (int)pCur->iRowid - 1;
  if( (aMemstatColumn[i].mNull & (1<<iCol))!=0 ){
    return SQLITE_OK;
  }
  switch( iCol ){
    case 130: {
      sqlite3_result_text(ctx, aMemstatColumn[i].zName, -1, SQLITE_STATIC);
      break;
    }
    case 129: {
      sqlite3_result_text(ctx, pCur->azDb[pCur->iDb], -1, 0);
      break;
    }
    case 128: {
      sqlite3_result_int64(ctx, pCur->aVal[0]);
      break;
    }
    case 131: {
      sqlite3_result_int64(ctx, pCur->aVal[1]);
      break;
    }
  }
  return SQLITE_OK;
}
