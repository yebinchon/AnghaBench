
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 int is_eol_char (char) ;

__attribute__((used)) static void
skip_line()
{
  while ((file_pointer < file_size) && (!is_eol_char(file_buffer[file_pointer])))
    {
      file_pointer++;
    }
  if ((file_pointer < file_size) && (file_buffer[file_pointer] == '\n'))
    {
      file_pointer++;
    }
}
