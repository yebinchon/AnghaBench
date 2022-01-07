
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 scalar_t__ PTRDIFF_MAX ;
 scalar_t__ PTRDIFF_MIN ;
 scalar_t__ THAtomicAddPtrdiff (int *,scalar_t__) ;
 int THError (char*,scalar_t__,scalar_t__) ;
 scalar_t__ heapDelta ;
 int heapSize ;

__attribute__((used)) static ptrdiff_t applyHeapDelta() {
  ptrdiff_t oldHeapSize = THAtomicAddPtrdiff(&heapSize, heapDelta);






  ptrdiff_t newHeapSize = oldHeapSize + heapDelta;
  heapDelta = 0;
  return newHeapSize;
}
