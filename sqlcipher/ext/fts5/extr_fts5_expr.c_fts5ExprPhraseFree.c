
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nSpace; } ;
struct TYPE_7__ {int nTerm; TYPE_3__ poslist; int pIter; struct TYPE_7__* pSynonym; struct TYPE_7__* zTerm; struct TYPE_7__* aTerm; } ;
typedef TYPE_1__ Fts5ExprTerm ;
typedef TYPE_1__ Fts5ExprPhrase ;
typedef TYPE_3__ Fts5Buffer ;


 int fts5BufferFree (TYPE_3__*) ;
 int sqlite3Fts5IterClose (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void fts5ExprPhraseFree(Fts5ExprPhrase *pPhrase){
  if( pPhrase ){
    int i;
    for(i=0; i<pPhrase->nTerm; i++){
      Fts5ExprTerm *pSyn;
      Fts5ExprTerm *pNext;
      Fts5ExprTerm *pTerm = &pPhrase->aTerm[i];
      sqlite3_free(pTerm->zTerm);
      sqlite3Fts5IterClose(pTerm->pIter);
      for(pSyn=pTerm->pSynonym; pSyn; pSyn=pNext){
        pNext = pSyn->pSynonym;
        sqlite3Fts5IterClose(pSyn->pIter);
        fts5BufferFree((Fts5Buffer*)&pSyn[1]);
        sqlite3_free(pSyn);
      }
    }
    if( pPhrase->poslist.nSpace>0 ) fts5BufferFree(&pPhrase->poslist);
    sqlite3_free(pPhrase);
  }
}
