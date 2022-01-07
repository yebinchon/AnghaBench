
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int (* xNext ) (int *,char const**,int*,int*,int*,int*) ;int (* xClose ) (int *) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
typedef int sqlite3_tokenizer_cursor ;
struct TYPE_7__ {scalar_t__ pModule; } ;
struct TYPE_6__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_2__ Fts3Table ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3OpenTokenizer (TYPE_3__*,int,char const*,int,int **) ;
 int stub1 (int *,char const**,int*,int*,int*,int*) ;
 int stub2 (int *) ;

__attribute__((used)) static int fts3SnippetShift(
  Fts3Table *pTab,
  int iLangid,
  int nSnippet,
  const char *zDoc,
  int nDoc,
  int *piPos,
  u64 *pHlmask
){
  u64 hlmask = *pHlmask;

  if( hlmask ){
    int nLeft;
    int nRight;
    int nDesired;

    for(nLeft=0; !(hlmask & ((u64)1 << nLeft)); nLeft++);
    for(nRight=0; !(hlmask & ((u64)1 << (nSnippet-1-nRight))); nRight++);
    assert( (nSnippet-1-nRight)<=63 && (nSnippet-1-nRight)>=0 );
    nDesired = (nLeft-nRight)/2;
    if( nDesired>0 ){
      int nShift;
      int iCurrent = 0;
      int rc;
      sqlite3_tokenizer_module *pMod;
      sqlite3_tokenizer_cursor *pC;
      pMod = (sqlite3_tokenizer_module *)pTab->pTokenizer->pModule;




      rc = sqlite3Fts3OpenTokenizer(pTab->pTokenizer, iLangid, zDoc, nDoc, &pC);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      while( rc==SQLITE_OK && iCurrent<(nSnippet+nDesired) ){
        const char *ZDUMMY; int DUMMY1 = 0, DUMMY2 = 0, DUMMY3 = 0;
        rc = pMod->xNext(pC, &ZDUMMY, &DUMMY1, &DUMMY2, &DUMMY3, &iCurrent);
      }
      pMod->xClose(pC);
      if( rc!=SQLITE_OK && rc!=SQLITE_DONE ){ return rc; }

      nShift = (rc==SQLITE_DONE)+iCurrent-nSnippet;
      assert( nShift<=nDesired );
      if( nShift>0 ){
        *piPos += nShift;
        *pHlmask = hlmask >> nShift;
      }
    }
  }
  return SQLITE_OK;
}
