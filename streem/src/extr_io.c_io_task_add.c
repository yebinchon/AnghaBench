
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_task {int data; } ;
typedef int strm_stream ;


 int strm_nil_value () ;
 int strm_task_add (int *,struct strm_task*) ;
 int * strm_value_foreign (int ) ;

__attribute__((used)) static void
io_task_add(struct strm_task* task)
{
  strm_stream* strm = strm_value_foreign(task->data);
  task->data = strm_nil_value();
  strm_task_add(strm, task);
}
