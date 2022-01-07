
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bEof; int nLeTerm; int term; int zLeTerm; int pIter; } ;
typedef TYPE_1__ Fts5VocabCursor ;


 int MIN (int,int) ;
 int SQLITE_OK ;
 int memcmp (int ,char const*,int) ;
 int sqlite3Fts5BufferSet (int*,int *,int,int const*) ;
 scalar_t__ sqlite3Fts5IterEof (int ) ;
 char* sqlite3Fts5IterTerm (int ,int*) ;

__attribute__((used)) static int fts5VocabInstanceNewTerm(Fts5VocabCursor *pCsr){
  int rc = SQLITE_OK;

  if( sqlite3Fts5IterEof(pCsr->pIter) ){
    pCsr->bEof = 1;
  }else{
    const char *zTerm;
    int nTerm;
    zTerm = sqlite3Fts5IterTerm(pCsr->pIter, &nTerm);
    if( pCsr->nLeTerm>=0 ){
      int nCmp = MIN(nTerm, pCsr->nLeTerm);
      int bCmp = memcmp(pCsr->zLeTerm, zTerm, nCmp);
      if( bCmp<0 || (bCmp==0 && pCsr->nLeTerm<nTerm) ){
        pCsr->bEof = 1;
      }
    }

    sqlite3Fts5BufferSet(&rc, &pCsr->term, nTerm, (const u8*)zTerm);
  }
  return rc;
}
