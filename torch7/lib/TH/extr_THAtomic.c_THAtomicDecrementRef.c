
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THAtomicAdd (int volatile*,int) ;

int THAtomicDecrementRef(int volatile *a)
{
  return (THAtomicAdd(a, -1) == 1);
}
