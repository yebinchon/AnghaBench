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
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 

char *
FUNC3 (const char path[])
{
  char *new_path = NULL;

  if (path)
    {
       new_path = FUNC1 (path);
#if defined(_WIN32)
       if (new_path && (strlen (new_path) >= 3) && (new_path[0] == '/') &&
          (new_path[2] == '/') && (isalpha (new_path[1])))
         {
           new_path[0] = new_path[1];
           new_path[1] = ':';
         }
#endif
    }

  return new_path;
}