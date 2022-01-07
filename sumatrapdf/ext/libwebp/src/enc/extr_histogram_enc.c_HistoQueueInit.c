
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_size; int * queue; scalar_t__ size; } ;
typedef int HistogramPair ;
typedef TYPE_1__ HistoQueue ;


 scalar_t__ WebPSafeMalloc (int,int) ;

__attribute__((used)) static int HistoQueueInit(HistoQueue* const histo_queue, const int max_size) {
  histo_queue->size = 0;
  histo_queue->max_size = max_size;


  histo_queue->queue = (HistogramPair*)WebPSafeMalloc(
      histo_queue->max_size + 1, sizeof(*histo_queue->queue));
  return histo_queue->queue != ((void*)0);
}
