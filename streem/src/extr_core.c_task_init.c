
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strm_worker {int dummy; } ;
struct TYPE_4__ {int th; } ;


 int TRUE ;
 TYPE_1__* malloc (int) ;
 void* prod_queue ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 void* queue ;
 int strm_event_loop_started ;
 int strm_init_io_loop () ;
 void* strm_queue_new () ;
 int task_loop ;
 int worker_count () ;
 int worker_max ;
 TYPE_1__* workers ;

__attribute__((used)) static void
task_init()
{
  int i;

  if (workers) return;

  strm_event_loop_started = TRUE;
  strm_init_io_loop();

  queue = strm_queue_new();
  prod_queue = strm_queue_new();
  worker_max = worker_count();
  workers = malloc(sizeof(struct strm_worker)*worker_max);
  for (i=0; i<worker_max; i++) {
    pthread_create(&workers[i].th, ((void*)0), task_loop, &workers[i]);
  }
}
