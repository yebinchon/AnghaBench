
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iPos; char* zDoc; } ;
typedef TYPE_1__ Fts5SFinder ;


 int FTS5_TOKEN_COLOCATED ;
 int SQLITE_OK ;
 int UNUSED_PARAM (int) ;
 int UNUSED_PARAM2 (char const*,int) ;
 int fts5SentenceFinderAdd (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int fts5SentenceFinderCb(
  void *pContext,
  int tflags,
  const char *pToken,
  int nToken,
  int iStartOff,
  int iEndOff
){
  int rc = SQLITE_OK;

  UNUSED_PARAM2(pToken, nToken);
  UNUSED_PARAM(iEndOff);

  if( (tflags & FTS5_TOKEN_COLOCATED)==0 ){
    Fts5SFinder *p = (Fts5SFinder*)pContext;
    if( p->iPos>0 ){
      int i;
      char c = 0;
      for(i=iStartOff-1; i>=0; i--){
        c = p->zDoc[i];
        if( c!=' ' && c!='\t' && c!='\n' && c!='\r' ) break;
      }
      if( i!=iStartOff-1 && (c=='.' || c==':') ){
        rc = fts5SentenceFinderAdd(p, p->iPos);
      }
    }else{
      rc = fts5SentenceFinderAdd(p, 0);
    }
    p->iPos++;
  }
  return rc;
}
