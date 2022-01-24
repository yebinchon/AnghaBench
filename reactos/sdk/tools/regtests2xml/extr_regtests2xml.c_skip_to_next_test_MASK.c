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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4()
{
  static char test_marker[] = "ROSREGTEST:";
  int found_test = 0;

  while ((file_pointer < file_size) && (!found_test))
    {
	  FUNC2();
      found_test = 1;
	  int i = 0;
      while (1)
	    {
		  if (i >= FUNC3(test_marker))
            {
              break;
            }
		  if (FUNC0(file_buffer[file_pointer]))
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
          FUNC1();
        }
    }
  return found_test;
}