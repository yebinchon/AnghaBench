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
 char* FUNC0 (char const*) ; 
 char FUNC1 (unsigned char) ; 

char *
FUNC2 (const char str[])
{
  char *new_str = NULL;

  if (str)
    {
      char *p;

      p = new_str = FUNC0 (str);

      while (*p)
        {
          *p = FUNC1 ((unsigned char) *p);
          p++;
        }
    }

  return new_str;
}