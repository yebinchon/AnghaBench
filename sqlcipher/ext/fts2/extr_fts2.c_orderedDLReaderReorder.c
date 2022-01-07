
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedDLReader ;


 scalar_t__ orderedDLReaderCmp (int *,int *) ;

__attribute__((used)) static void orderedDLReaderReorder(OrderedDLReader *p, int n){
  while( n>1 && orderedDLReaderCmp(p, p+1)>0 ){
    OrderedDLReader tmp = p[0];
    p[0] = p[1];
    p[1] = tmp;
    n--;
    p++;
  }
}
