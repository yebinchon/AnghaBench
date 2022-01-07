
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int applyHeapDelta () ;
 int heapSoftmax ;
 int heapSoftmaxGrowthFactor ;
 int heapSoftmaxGrowthThresh ;
 int torchGCData ;
 int torchGCFunction (int ) ;

__attribute__((used)) static void maybeTriggerGC(ptrdiff_t curHeapSize) {
  if (torchGCFunction && curHeapSize > heapSoftmax) {
    torchGCFunction(torchGCData);


    ptrdiff_t newHeapSize = applyHeapDelta();

    if (newHeapSize > heapSoftmax * heapSoftmaxGrowthThresh) {
      heapSoftmax = (ptrdiff_t)(heapSoftmax * heapSoftmaxGrowthFactor);
    }
  }
}
