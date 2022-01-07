
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_12__ {int nData; int pData; } ;
struct TYPE_11__ {int iInstOff; int bEof; TYPE_4__* pIter; int iInstPos; TYPE_2__* pFts5; } ;
struct TYPE_10__ {TYPE_1__* pConfig; } ;
struct TYPE_9__ {int eDetail; } ;
typedef TYPE_3__ Fts5VocabCursor ;
typedef TYPE_4__ Fts5IndexIter ;


 int FTS5_DETAIL_NONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5VocabInstanceNewTerm (TYPE_3__*) ;
 scalar_t__ sqlite3Fts5IterEof (TYPE_4__*) ;
 int sqlite3Fts5IterNextScan (TYPE_4__*) ;
 scalar_t__ sqlite3Fts5PoslistNext64 (int ,int ,int*,int *) ;

__attribute__((used)) static int fts5VocabInstanceNext(Fts5VocabCursor *pCsr){
  int eDetail = pCsr->pFts5->pConfig->eDetail;
  int rc = SQLITE_OK;
  Fts5IndexIter *pIter = pCsr->pIter;
  i64 *pp = &pCsr->iInstPos;
  int *po = &pCsr->iInstOff;

  assert( sqlite3Fts5IterEof(pIter)==0 );
  assert( pCsr->bEof==0 );
  while( eDetail==FTS5_DETAIL_NONE
      || sqlite3Fts5PoslistNext64(pIter->pData, pIter->nData, po, pp)
  ){
    pCsr->iInstPos = 0;
    pCsr->iInstOff = 0;

    rc = sqlite3Fts5IterNextScan(pCsr->pIter);
    if( rc==SQLITE_OK ){
      rc = fts5VocabInstanceNewTerm(pCsr);
      if( pCsr->bEof || eDetail==FTS5_DETAIL_NONE ) break;
    }
    if( rc ){
      pCsr->bEof = 1;
      break;
    }
  }

  return rc;
}
