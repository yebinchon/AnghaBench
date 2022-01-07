
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * file_buffer ;
 size_t file_pointer ;
 size_t file_size ;
 int is_eol_char (int ) ;
 scalar_t__ is_whitespace (int ) ;

__attribute__((used)) static void
skip_whitespace()
{
  while ((file_pointer < file_size) && !is_eol_char(file_buffer[file_pointer])
    && is_whitespace(file_buffer[file_pointer]))
    {
      file_pointer++;
    }
}
