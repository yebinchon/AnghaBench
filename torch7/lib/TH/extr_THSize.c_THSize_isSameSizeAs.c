
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int THSize_isSameSizeAs(const long *sizeA, long dimsA, const long *sizeB, long dimsB) {
  int d;
  if (dimsA != dimsB)
    return 0;
  for(d = 0; d < dimsA; ++d)
  {
    if(sizeA[d] != sizeB[d])
      return 0;
  }
  return 1;
}
