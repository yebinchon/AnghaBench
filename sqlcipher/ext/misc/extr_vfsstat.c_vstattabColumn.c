
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {size_t i; } ;
typedef TYPE_1__ VfsStatCursor ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 size_t VFSSTAT_ANY ;
 size_t VFSSTAT_nStat ;



 int * aVfsCnt ;
 char const** azFile ;
 char** azStat ;
 char** azStatAny ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int vstattabColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  VfsStatCursor *pCur = (VfsStatCursor*)cur;
  switch( i ){
    case 129: {
      sqlite3_result_text(ctx, azFile[pCur->i/VFSSTAT_nStat], -1, SQLITE_STATIC);
      break;
    }
    case 128: {
      const char **az;
      az = (pCur->i/VFSSTAT_nStat)==VFSSTAT_ANY ? azStatAny : azStat;
      sqlite3_result_text(ctx, az[pCur->i%VFSSTAT_nStat], -1, SQLITE_STATIC);
      break;
    }
    case 130: {
      sqlite3_result_int64(ctx, aVfsCnt[pCur->i]);
      break;
    }
  }
  return SQLITE_OK;
}
