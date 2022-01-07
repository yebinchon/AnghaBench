
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int THAtomicCompareAndSwapPtrdiff (int volatile*,int ,int ) ;
 int atomic_load (int volatile*) ;

ptrdiff_t THAtomicGetPtrdiff(ptrdiff_t volatile *a)
{



  ptrdiff_t value;
  do {
    value = *a;
  } while (!THAtomicCompareAndSwapPtrdiff(a, value, value));
  return value;

}
