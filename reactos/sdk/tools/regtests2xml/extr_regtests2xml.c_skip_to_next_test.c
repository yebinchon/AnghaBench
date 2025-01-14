
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 scalar_t__ is_eol_char (char) ;
 int skip_line () ;
 int skip_whitespace () ;
 int strlen (char*) ;

__attribute__((used)) static int
skip_to_next_test()
{
  static char test_marker[] = "ROSREGTEST:";
  int found_test = 0;

  while ((file_pointer < file_size) && (!found_test))
    {
   skip_whitespace();
      found_test = 1;
   int i = 0;
      while (1)
     {
    if (i >= strlen(test_marker))
            {
              break;
            }
    if (is_eol_char(file_buffer[file_pointer]))
      {
              found_test = 0;
     break;
      }
    if (file_buffer[file_pointer] != test_marker[i])
            {
              found_test = 0;
     break;
            }
          file_pointer++;
          i++;
     }
   if (!found_test)
        {
          skip_line();
        }
    }
  return found_test;
}
