
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nLeTerm; scalar_t__ bEof; scalar_t__ zLeTerm; scalar_t__ pIter; scalar_t__ rowid; } ;
typedef TYPE_1__ Fts5VocabCursor ;


 int sqlite3Fts5IterClose (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void fts5VocabResetCursor(Fts5VocabCursor *pCsr){
  pCsr->rowid = 0;
  sqlite3Fts5IterClose(pCsr->pIter);
  pCsr->pIter = 0;
  sqlite3_free(pCsr->zLeTerm);
  pCsr->nLeTerm = -1;
  pCsr->zLeTerm = 0;
  pCsr->bEof = 0;
}
