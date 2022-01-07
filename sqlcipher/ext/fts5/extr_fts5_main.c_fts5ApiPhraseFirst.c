
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * a; int * b; } ;
typedef TYPE_1__ Fts5PhraseIter ;
typedef int Fts5Cursor ;
typedef int Fts5Context ;


 int SQLITE_OK ;
 int fts5ApiPhraseNext (int *,TYPE_1__*,int*,int*) ;
 int fts5CsrPoslist (int *,int,int **,int*) ;

__attribute__((used)) static int fts5ApiPhraseFirst(
  Fts5Context *pCtx,
  int iPhrase,
  Fts5PhraseIter *pIter,
  int *piCol, int *piOff
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  int n;
  int rc = fts5CsrPoslist(pCsr, iPhrase, &pIter->a, &n);
  if( rc==SQLITE_OK ){
    pIter->b = &pIter->a[n];
    *piCol = 0;
    *piOff = 0;
    fts5ApiPhraseNext(pCtx, pIter, piCol, piOff);
  }
  return rc;
}
