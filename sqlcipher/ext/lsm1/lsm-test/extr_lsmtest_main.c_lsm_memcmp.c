
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int lsm_memcmp(u8 *a, u8 *b, int c){
  int i;
  for(i=0; i<c; i++){
    if( a[i]!=b[i] ) return a[i] - b[i];
  }
  return 0;
}
