
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int handle_key; scalar_t__ init; } ;


 TYPE_1__ G_NODE ;
 int THREAD_MAIN ;
 void* pthread_getspecific (int ) ;

uint32_t
skynet_current_handle(void) {
 if (G_NODE.init) {
  void * handle = pthread_getspecific(G_NODE.handle_key);
  return (uint32_t)(uintptr_t)handle;
 } else {
  uint32_t v = (uint32_t)(-THREAD_MAIN);
  return v;
 }
}
