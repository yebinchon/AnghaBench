
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long ptrdiff_t ;



ptrdiff_t THSize_nElement(long dims, long *size) {
  if(dims == 0)
    return 0;
  else
  {
    ptrdiff_t nElement = 1;
    int d;
    for(d = 0; d < dims; d++)
      nElement *= size[d];
    return nElement;
  }
}
