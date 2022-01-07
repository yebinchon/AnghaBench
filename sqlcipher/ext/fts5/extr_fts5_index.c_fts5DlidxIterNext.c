
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Index ;
typedef int Fts5DlidxIter ;


 int fts5DlidxIterNextR (int *,int *,int ) ;

__attribute__((used)) static int fts5DlidxIterNext(Fts5Index *p, Fts5DlidxIter *pIter){
  return fts5DlidxIterNextR(p, pIter, 0);
}
