
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_4__ {scalar_t__ mode; } ;
typedef TYPE_1__ strm_stream ;
typedef int strm_callback ;


 scalar_t__ strm_dying ;
 scalar_t__ strm_killed ;
 int strm_task_add (TYPE_1__*,int ) ;
 int strm_task_new (int ,int ) ;

void
strm_task_push(strm_stream* strm, strm_callback func, strm_value data)
{
  if (strm->mode == strm_killed || strm->mode == strm_dying)
    return;
  strm_task_add(strm, strm_task_new(func, data));
}
