
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int pIndex; } ;
typedef TYPE_1__ Fts5Iter ;
typedef int Fts5IndexIter ;


 int fts5IndexReturn (int ) ;
 int fts5MultiIterNextFrom (int ,TYPE_1__*,int ) ;

int sqlite3Fts5IterNextFrom(Fts5IndexIter *pIndexIter, i64 iMatch){
  Fts5Iter *pIter = (Fts5Iter*)pIndexIter;
  fts5MultiIterNextFrom(pIter->pIndex, pIter, iMatch);
  return fts5IndexReturn(pIter->pIndex);
}
