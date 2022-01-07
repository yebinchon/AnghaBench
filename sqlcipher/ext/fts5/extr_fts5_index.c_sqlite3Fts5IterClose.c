
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pIndex; } ;
typedef TYPE_1__ Fts5Iter ;
typedef int Fts5IndexIter ;
typedef int Fts5Index ;


 int fts5CloseReader (int *) ;
 int fts5MultiIterFree (TYPE_1__*) ;

void sqlite3Fts5IterClose(Fts5IndexIter *pIndexIter){
  if( pIndexIter ){
    Fts5Iter *pIter = (Fts5Iter*)pIndexIter;
    Fts5Index *pIndex = pIter->pIndex;
    fts5MultiIterFree(pIter);
    fts5CloseReader(pIndex);
  }
}
