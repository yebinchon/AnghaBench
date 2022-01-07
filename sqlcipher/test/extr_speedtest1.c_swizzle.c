
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned swizzle(unsigned in, unsigned limit){
  unsigned out = 0;
  while( limit ){
    out = (out<<1) | (in&1);
    in >>= 1;
    limit >>= 1;
  }
  return out;
}
