
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bled_cancel_request ;
 int bled_initialized ;
 int * bled_printf ;
 int * bled_progress ;
 int free (int *) ;
 int * global_crc32_table ;

void bled_exit(void)
{
 bled_printf = ((void*)0);
 bled_progress = ((void*)0);
 bled_cancel_request = ((void*)0);
 if (global_crc32_table) {
  free(global_crc32_table);
  global_crc32_table = ((void*)0);
 }
 bled_initialized = 0;
}
