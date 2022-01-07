
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ is_external_memory; int * private_memory; } ;
typedef TYPE_1__ WebPDecBuffer ;


 int WebPSafeFree (int *) ;

void WebPFreeDecBuffer(WebPDecBuffer* buffer) {
  if (buffer != ((void*)0)) {
    if (buffer->is_external_memory <= 0) {
      WebPSafeFree(buffer->private_memory);
    }
    buffer->private_memory = ((void*)0);
  }
}
