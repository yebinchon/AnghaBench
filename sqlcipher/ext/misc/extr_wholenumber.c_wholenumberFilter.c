
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iValue; int mxValue; } ;
typedef TYPE_1__ wholenumber_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef void* sqlite3_int64 ;


 int SQLITE_OK ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static int wholenumberFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  wholenumber_cursor *pCur = (wholenumber_cursor *)pVtabCursor;
  sqlite3_int64 v;
  int i = 0;
  pCur->iValue = 1;
  pCur->mxValue = 0xffffffff;
  if( idxNum & 3 ){
    v = sqlite3_value_int64(argv[0]) + (idxNum&1);
    if( v>pCur->iValue && v<=pCur->mxValue ) pCur->iValue = v;
    i++;
  }
  if( idxNum & 12 ){
    v = sqlite3_value_int64(argv[i]) - ((idxNum>>2)&1);
    if( v>=pCur->iValue && v<pCur->mxValue ) pCur->mxValue = v;
  }
  return SQLITE_OK;
}
