
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 scalar_t__ PTRDIFF_MAX ;
 scalar_t__ PTRDIFF_MIN ;
 int THError (char*,scalar_t__,scalar_t__) ;
 scalar_t__ applyHeapDelta () ;
 scalar_t__ heapDelta ;
 scalar_t__ heapMaxDelta ;
 scalar_t__ heapMinDelta ;
 int maybeTriggerGC (scalar_t__) ;

void THHeapUpdate(ptrdiff_t size) {







  heapDelta += size;


  if (heapDelta < heapMaxDelta && heapDelta > heapMinDelta) {
    return;
  }

  ptrdiff_t newHeapSize = applyHeapDelta();

  if (size > 0) {
    maybeTriggerGC(newHeapSize);
  }
}
