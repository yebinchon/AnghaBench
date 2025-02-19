
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 scalar_t__ is_eol_char (int ) ;
 int skip_line () ;
 int strncpy (char*,int *,size_t) ;

__attribute__((used)) static int
read_until_end(char* buf)
{
  int start = file_pointer;
  while ((file_pointer < file_size))
    {
      if (is_eol_char(file_buffer[file_pointer]))
        {
    strncpy(buf, &file_buffer[start], file_pointer - start);
    buf[file_pointer - start] = 0;
    skip_line();
          return 1;
        }
      file_pointer++;
    }
  return 0;
}
