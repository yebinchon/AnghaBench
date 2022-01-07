
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nSeg; int poslist; int * aSeg; } ;
typedef TYPE_1__ Fts5Iter ;


 int fts5BufferFree (int *) ;
 int fts5SegIterClear (int *) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void fts5MultiIterFree(Fts5Iter *pIter){
  if( pIter ){
    int i;
    for(i=0; i<pIter->nSeg; i++){
      fts5SegIterClear(&pIter->aSeg[i]);
    }
    fts5BufferFree(&pIter->poslist);
    sqlite3_free(pIter);
  }
}
