
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aRowidOffset; int pDlidx; int pNextLeaf; int pLeaf; int term; } ;
typedef TYPE_1__ Fts5SegIter ;


 int fts5BufferFree (int *) ;
 int fts5DataRelease (int ) ;
 int fts5DlidxIterFree (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void fts5SegIterClear(Fts5SegIter *pIter){
  fts5BufferFree(&pIter->term);
  fts5DataRelease(pIter->pLeaf);
  fts5DataRelease(pIter->pNextLeaf);
  fts5DlidxIterFree(pIter->pDlidx);
  sqlite3_free(pIter->aRowidOffset);
  memset(pIter, 0, sizeof(Fts5SegIter));
}
