#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int TAG_UNKNOWN ; 
 char* file_buffer ; 
 size_t file_pointer ; 
 size_t file_size ; 
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int) ; 
 scalar_t__* tagname ; 

__attribute__((used)) static int
FUNC3()
{
  unsigned int start;
  int end_of_tag;
  int found_tag = 0;
  int tag_id;
  int len;

  tagname[0] = 0;
  while ((file_pointer < file_size) && (!found_tag))
    {
      if (file_buffer[file_pointer] == '@')
        {
          file_pointer++;
          start = file_pointer;
          end_of_tag = 0;
          while ((file_pointer < file_size) && (!end_of_tag))
            {
              end_of_tag = FUNC1(file_buffer[file_pointer]);
              file_pointer++;
            }
          len = file_pointer > start ? file_pointer - start - 1 : 0;
          FUNC2(tagname, &file_buffer[start], len);
          tagname[len] = 0;

          tag_id = FUNC0(tagname);
          if (tag_id != TAG_UNKNOWN)
            {
              return tag_id;
            }
        }
      file_pointer++;
    }

  return TAG_UNKNOWN;
}