
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zExpr; scalar_t__ bDesc; } ;
typedef TYPE_1__ CidxColumn ;


 char* cidxMprintf (int*,char*,char*,char const*,int ,...) ;

__attribute__((used)) static char *cidxWhere(
  int *pRc, CidxColumn *aCol, char **azAfter, int iGt, int bLastIsNull
){
  char *zRet = 0;
  const char *zSep = "";
  int i;

  for(i=0; i<iGt; i++){
    zRet = cidxMprintf(pRc, "%z%s(%s) IS %s", zRet,
        zSep, aCol[i].zExpr, (azAfter[i] ? azAfter[i] : "NULL")
    );
    zSep = " AND ";
  }

  if( bLastIsNull ){
    zRet = cidxMprintf(pRc, "%z%s(%s) IS NULL", zRet, zSep, aCol[iGt].zExpr);
  }
  else if( azAfter[iGt] ){
    zRet = cidxMprintf(pRc, "%z%s(%s) %s %s", zRet,
        zSep, aCol[iGt].zExpr, (aCol[iGt].bDesc ? "<" : ">"),
        azAfter[iGt]
    );
  }else{
    zRet = cidxMprintf(pRc, "%z%s(%s) IS NOT NULL", zRet, zSep,aCol[iGt].zExpr);
  }

  return zRet;
}
