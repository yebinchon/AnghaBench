
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int init; int handle_key; scalar_t__ monitor_exit; scalar_t__ total; } ;


 TYPE_1__ G_NODE ;
 int THREAD_MAIN ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ pthread_key_create (int *,int *) ;
 int skynet_initthread (int ) ;
 int stderr ;

void
skynet_globalinit(void) {
 G_NODE.total = 0;
 G_NODE.monitor_exit = 0;
 G_NODE.init = 1;
 if (pthread_key_create(&G_NODE.handle_key, ((void*)0))) {
  fprintf(stderr, "pthread_key_create failed");
  exit(1);
 }

 skynet_initthread(THREAD_MAIN);
}
