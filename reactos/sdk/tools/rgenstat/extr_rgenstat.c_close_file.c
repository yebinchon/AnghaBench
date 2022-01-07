
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * file_buffer ;
 int * file_handle ;
 scalar_t__ file_pointer ;
 int free (int *) ;

__attribute__((used)) static void
close_file()
{
  free(file_buffer);
  file_buffer = ((void*)0);
  fclose(file_handle);
  file_handle = ((void*)0);
  file_pointer = 0;
}
