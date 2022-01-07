
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Iter ;
typedef int Fts5IndexIter ;


 scalar_t__ fts5MultiIterTerm (int *,int*) ;

const char *sqlite3Fts5IterTerm(Fts5IndexIter *pIndexIter, int *pn){
  int n;
  const char *z = (const char*)fts5MultiIterTerm((Fts5Iter*)pIndexIter, &n);
  *pn = n-1;
  return &z[1];
}
