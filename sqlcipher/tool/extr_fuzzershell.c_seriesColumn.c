
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_2__ {int iValue; int iStep; int mxValue; int mnValue; } ;
typedef TYPE_1__ series_cursor ;





 int SQLITE_OK ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static int seriesColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  series_cursor *pCur = (series_cursor*)cur;
  sqlite3_int64 x = 0;
  switch( i ){
    case 130: x = pCur->mnValue; break;
    case 128: x = pCur->mxValue; break;
    case 129: x = pCur->iStep; break;
    default: x = pCur->iValue; break;
  }
  sqlite3_result_int64(ctx, x);
  return SQLITE_OK;
}
