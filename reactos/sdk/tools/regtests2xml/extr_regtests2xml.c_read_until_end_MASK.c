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
 int /*<<< orphan*/ * file_buffer ; 
 size_t file_pointer ; 
 size_t file_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(char* buf)
{
  int start = file_pointer;
  while ((file_pointer < file_size))
    {
      if (FUNC0(file_buffer[file_pointer]))
        {
		  FUNC2(buf, &file_buffer[start], file_pointer - start);
		  buf[file_pointer - start] = 0;
		  FUNC1();
          return 1;
        }
      file_pointer++;
    }
  return 0;
}