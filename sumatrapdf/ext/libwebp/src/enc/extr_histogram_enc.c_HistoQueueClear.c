
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_size; scalar_t__ size; int queue; } ;
typedef TYPE_1__ HistoQueue ;


 int WebPSafeFree (int ) ;
 int assert (int ) ;

__attribute__((used)) static void HistoQueueClear(HistoQueue* const histo_queue) {
  assert(histo_queue != ((void*)0));
  WebPSafeFree(histo_queue->queue);
  histo_queue->size = 0;
  histo_queue->max_size = 0;
}
