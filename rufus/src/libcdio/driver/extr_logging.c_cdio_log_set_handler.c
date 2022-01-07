
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdio_log_handler_t ;


 int _handler ;

cdio_log_handler_t
cdio_log_set_handler(cdio_log_handler_t new_handler)
{
  cdio_log_handler_t old_handler = _handler;

  _handler = new_handler;

  return old_handler;
}
