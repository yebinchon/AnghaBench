
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int numberOfVChar(const char *z){
  int N = 0;
  while( z[0] && z[0]=='v' ){
    z++;
    N++;
  }
  return z[0]==0 ? N : 0;
}
