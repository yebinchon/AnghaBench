
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3rbu ;
struct TYPE_3__ {int nTblCol; char** azTblCol; } ;
typedef TYPE_1__ RbuObjIter ;


 char* rbuMPrintf (int *,char*,char*,char const*,char const*) ;

__attribute__((used)) static char *rbuObjIterGetCollist(
  sqlite3rbu *p,
  RbuObjIter *pIter
){
  char *zList = 0;
  const char *zSep = "";
  int i;
  for(i=0; i<pIter->nTblCol; i++){
    const char *z = pIter->azTblCol[i];
    zList = rbuMPrintf(p, "%z%s\"%w\"", zList, zSep, z);
    zSep = ", ";
  }
  return zList;
}
