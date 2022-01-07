
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_task {int data; int func; } ;
typedef int strm_value ;
typedef int strm_callback ;


 struct strm_task* malloc (int) ;

struct strm_task*
strm_task_new(strm_callback func, strm_value data)
{
  struct strm_task *t;

  t = malloc(sizeof(struct strm_task));
  t->func = func;
  t->data = data;

  return t;
}
