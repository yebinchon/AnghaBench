
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rc; } ;
struct TYPE_5__ {TYPE_2__* pIndex; } ;
typedef TYPE_1__ Fts5Iter ;
typedef int Fts5IndexIter ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5IndexReturn (TYPE_2__*) ;
 int fts5MultiIterNext (TYPE_2__*,TYPE_1__*,int ,int ) ;

int sqlite3Fts5IterNext(Fts5IndexIter *pIndexIter){
  Fts5Iter *pIter = (Fts5Iter*)pIndexIter;
  assert( pIter->pIndex->rc==SQLITE_OK );
  fts5MultiIterNext(pIter->pIndex, pIter, 0, 0);
  return fts5IndexReturn(pIter->pIndex);
}
