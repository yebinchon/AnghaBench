
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int progress_t ;
typedef int printf_t ;


 unsigned long* bled_cancel_request ;
 int bled_initialized ;
 int bled_printf ;
 int bled_progress ;

int bled_init(printf_t print_function, progress_t progress_function, unsigned long* cancel_request)
{
 if (bled_initialized)
  return -1;
 bled_initialized = 1;
 bled_printf = print_function;
 bled_progress = progress_function;
 bled_cancel_request = cancel_request;
 return 0;
}
