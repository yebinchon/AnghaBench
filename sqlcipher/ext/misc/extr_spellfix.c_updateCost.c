
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static void updateCost(
  unsigned int *m,
  int i,
  int j,
  int iCost
){
  unsigned int b;
  assert( iCost>=0 );
  assert( iCost<10000 );
  b = m[j] + iCost;
  if( b<m[i] ) m[i] = b;
}
