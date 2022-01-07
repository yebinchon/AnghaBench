
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nTerm; int pTerm; } ;
typedef TYPE_1__ TermData ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int termDataCmp(const void *av, const void *bv){
  const TermData *a = (const TermData *)av;
  const TermData *b = (const TermData *)bv;
  int n = a->nTerm<b->nTerm ? a->nTerm : b->nTerm;
  int c = memcmp(a->pTerm, b->pTerm, n);
  if( c!=0 ) return c;
  return a->nTerm-b->nTerm;
}
