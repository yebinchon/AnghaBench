
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 int skip_line () ;

__attribute__((used)) static void
skip_comments()
{
  while ((file_pointer < file_size))
    {
      if (file_buffer[file_pointer] == '*')
        {
          if ((file_pointer + 1 < file_size))
            {
              if (file_buffer[file_pointer + 1] == '/')
                {
                  skip_line();
                  return;
                }
            }
        }
      file_pointer++;
    }
}
