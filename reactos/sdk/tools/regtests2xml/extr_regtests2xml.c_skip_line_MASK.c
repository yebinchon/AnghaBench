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
 char* file_buffer ; 
 size_t file_pointer ; 
 size_t file_size ; 
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static void
FUNC1()
{
  while ((file_pointer < file_size) && (!FUNC0(file_buffer[file_pointer])))
    {
      file_pointer++;
    }
  if ((file_pointer < file_size) && (FUNC0(file_buffer[file_pointer])))
    {
      file_pointer++;
      if ((file_pointer < file_size) && (file_buffer[file_pointer] == '\n'))
        {
          file_pointer++;
        }
    }
}