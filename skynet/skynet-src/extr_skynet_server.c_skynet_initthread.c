
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct TYPE_2__ {int handle_key; } ;


 TYPE_1__ G_NODE ;
 int pthread_setspecific (int ,void*) ;

void
skynet_initthread(int m) {
 uintptr_t v = (uint32_t)(-m);
 pthread_setspecific(G_NODE.handle_key, (void *)v);
}
