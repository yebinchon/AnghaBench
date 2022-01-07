
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 int get_previous_identifier (size_t,char*) ;

__attribute__((used)) static int
skip_to_next_name(char *name)
{
  while ((file_pointer < file_size))
    {
      if (file_buffer[file_pointer] == '(')
        {
          return get_previous_identifier(file_pointer - 1, name);
        }
      file_pointer++;
    }
  return 0;
}
