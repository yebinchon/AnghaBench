
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THAtomicCompareAndSwapLong (long volatile*,long,long) ;
 long atomic_load (long volatile*) ;

long THAtomicGetLong(long volatile *a)
{



  long value;
  do {
    value = *a;
  } while (!THAtomicCompareAndSwapLong(a, value, value));
  return value;

}
