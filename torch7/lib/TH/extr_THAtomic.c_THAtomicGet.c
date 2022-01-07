
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THAtomicCompareAndSwap (int volatile*,int,int) ;
 int atomic_load (int volatile*) ;

int THAtomicGet(int volatile *a)
{



  int value;
  do {
    value = *a;
  } while (!THAtomicCompareAndSwap(a, value, value));
  return value;

}
