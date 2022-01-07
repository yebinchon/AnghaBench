
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int digit_count(int v){
  unsigned int i, x;
  for(i=1, x=64; v>=x; i++, x <<= 6){}
  return i;
}
