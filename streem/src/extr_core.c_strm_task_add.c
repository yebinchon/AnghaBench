
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_task {scalar_t__ mode; int queue; } ;
typedef struct strm_task strm_stream ;


 int prod_queue ;
 int queue ;
 scalar_t__ strm_producer ;
 int strm_queue_add (int ,struct strm_task*) ;

void
strm_task_add(strm_stream* strm, struct strm_task* task)
{
  strm_queue_add(strm->queue, task);
  if (strm->mode == strm_producer) {
    strm_queue_add(prod_queue, strm);
  }
  else {
    strm_queue_add(queue, strm);
  }
}
