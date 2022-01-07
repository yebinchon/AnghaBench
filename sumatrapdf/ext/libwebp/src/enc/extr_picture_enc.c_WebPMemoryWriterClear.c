
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_size; scalar_t__ size; int * mem; } ;
typedef TYPE_1__ WebPMemoryWriter ;


 int WebPSafeFree (int *) ;

void WebPMemoryWriterClear(WebPMemoryWriter* writer) {
  if (writer != ((void*)0)) {
    WebPSafeFree(writer->mem);
    writer->mem = ((void*)0);
    writer->size = 0;
    writer->max_size = 0;
  }
}
