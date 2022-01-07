
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int (* xOpen ) (TYPE_3__*,char const*,int,TYPE_2__**) ;int (* xNext ) (TYPE_2__*,char const**,int*,int*,int*,int*) ;int (* xClose ) (TYPE_2__*) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
struct TYPE_13__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_2__ sqlite3_tokenizer_cursor ;
struct TYPE_14__ {TYPE_1__* pModule; } ;
typedef TYPE_3__ sqlite3_tokenizer ;
struct TYPE_15__ {int nColumn; TYPE_3__* pTokenizer; } ;
typedef TYPE_4__ fulltext_vtab ;
struct TYPE_17__ {int nTerms; TYPE_5__* pTerms; TYPE_4__* pFts; } ;
struct TYPE_16__ {int iColumn; int nTerm; int iPhrase; int pTerm; } ;
typedef int Snippet ;
typedef TYPE_5__ QueryTerm ;
typedef TYPE_6__ Query ;


 unsigned int FTS1_ROTOR_MASK ;
 int FTS1_ROTOR_SZ ;
 scalar_t__ memcmp (int ,char const*,int) ;
 int snippetAppendMatch (int *,int,int,int,int) ;
 int stub1 (TYPE_3__*,char const*,int,TYPE_2__**) ;
 int stub2 (TYPE_2__*,char const**,int*,int*,int*,int*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static void snippetOffsetsOfColumn(
  Query *pQuery,
  Snippet *pSnippet,
  int iColumn,
  const char *zDoc,
  int nDoc
){
  const sqlite3_tokenizer_module *pTModule;
  sqlite3_tokenizer *pTokenizer;
  sqlite3_tokenizer_cursor *pTCursor;
  fulltext_vtab *pVtab;
  int nColumn;
  const QueryTerm *aTerm;
  int nTerm;
  int i, j;
  int rc;
  unsigned int match, prevMatch;
  const char *zToken;
  int nToken;
  int iBegin, iEnd, iPos;



  unsigned int iRotor = 0;
  int iRotorBegin[FTS1_ROTOR_SZ];
  int iRotorLen[FTS1_ROTOR_SZ];

  pVtab = pQuery->pFts;
  nColumn = pVtab->nColumn;
  pTokenizer = pVtab->pTokenizer;
  pTModule = pTokenizer->pModule;
  rc = pTModule->xOpen(pTokenizer, zDoc, nDoc, &pTCursor);
  if( rc ) return;
  pTCursor->pTokenizer = pTokenizer;
  aTerm = pQuery->pTerms;
  nTerm = pQuery->nTerms;
  if( nTerm>=FTS1_ROTOR_SZ ){
    nTerm = FTS1_ROTOR_SZ - 1;
  }
  prevMatch = 0;
  while(1){
    rc = pTModule->xNext(pTCursor, &zToken, &nToken, &iBegin, &iEnd, &iPos);
    if( rc ) break;
    iRotorBegin[iRotor&FTS1_ROTOR_MASK] = iBegin;
    iRotorLen[iRotor&FTS1_ROTOR_MASK] = iEnd-iBegin;
    match = 0;
    for(i=0; i<nTerm; i++){
      int iCol;
      iCol = aTerm[i].iColumn;
      if( iCol>=0 && iCol<nColumn && iCol!=iColumn ) continue;
      if( aTerm[i].nTerm!=nToken ) continue;
      if( memcmp(aTerm[i].pTerm, zToken, nToken) ) continue;
      if( aTerm[i].iPhrase>1 && (prevMatch & (1<<i))==0 ) continue;
      match |= 1<<i;
      if( i==nTerm-1 || aTerm[i+1].iPhrase==1 ){
        for(j=aTerm[i].iPhrase-1; j>=0; j--){
          int k = (iRotor-j) & FTS1_ROTOR_MASK;
          snippetAppendMatch(pSnippet, iColumn, i-j,
                iRotorBegin[k], iRotorLen[k]);
        }
      }
    }
    prevMatch = match<<1;
    iRotor++;
  }
  pTModule->xClose(pTCursor);
}
