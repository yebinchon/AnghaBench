
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColumn; scalar_t__ zLanguageid; } ;
typedef TYPE_1__ Fts3Table ;


 int fts3Appendf (int*,char**,char*,...) ;
 char* fts3QuoteId (char const*) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static char *fts3WriteExprList(Fts3Table *p, const char *zFunc, int *pRc){
  char *zRet = 0;
  char *zFree = 0;
  char *zFunction;
  int i;

  if( !zFunc ){
    zFunction = "";
  }else{
    zFree = zFunction = fts3QuoteId(zFunc);
  }
  fts3Appendf(pRc, &zRet, "?");
  for(i=0; i<p->nColumn; i++){
    fts3Appendf(pRc, &zRet, ",%s(?)", zFunction);
  }
  if( p->zLanguageid ){
    fts3Appendf(pRc, &zRet, ", ?");
  }
  sqlite3_free(zFree);
  return zRet;
}
