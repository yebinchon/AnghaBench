
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axset {int nAction; int iOrder; } ;


 int assert (int) ;

__attribute__((used)) static int axset_compare(const void *a, const void *b){
  struct axset *p1 = (struct axset*)a;
  struct axset *p2 = (struct axset*)b;
  int c;
  c = p2->nAction - p1->nAction;
  if( c==0 ){
    c = p1->iOrder - p2->iOrder;
  }
  assert( c!=0 || p1==p2 );
  return c;
}
