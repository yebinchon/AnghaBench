
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_external_memory; int * private_memory; } ;
typedef TYPE_1__ WebPDecBuffer ;



void WebPGrabDecBuffer(WebPDecBuffer* const src, WebPDecBuffer* const dst) {
  if (src != ((void*)0) && dst != ((void*)0)) {
    *dst = *src;
    if (src->private_memory != ((void*)0)) {
      src->is_external_memory = 1;
      src->private_memory = ((void*)0);
    }
  }
}
