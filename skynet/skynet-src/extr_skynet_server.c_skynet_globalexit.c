
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle_key; } ;


 TYPE_1__ G_NODE ;
 int pthread_key_delete (int ) ;

void
skynet_globalexit(void) {
 pthread_key_delete(G_NODE.handle_key);
}
