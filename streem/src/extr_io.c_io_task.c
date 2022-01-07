
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_task {int dummy; } ;
typedef int strm_stream ;
typedef int strm_callback ;


 int strm_foreign_value (int *) ;
 struct strm_task* strm_task_new (int ,int ) ;

__attribute__((used)) static struct strm_task*
io_task(strm_stream* strm, strm_callback func)
{
  return strm_task_new(func, strm_foreign_value(strm));
}
