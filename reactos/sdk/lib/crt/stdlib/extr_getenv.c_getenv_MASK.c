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
 char*** FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char*,char) ; 
 size_t FUNC3 (char const*) ; 

char *FUNC4(const char *name)
{
   char **env;
   size_t length = FUNC3(name);

   for (env = *FUNC0(); *env; env++)
   {
      char *str = *env;
      char *pos = FUNC2(str,'=');
      if (pos && ((unsigned int)(pos - str) == length) && !FUNC1(str, name, length))
         return pos + 1;
   }
   return NULL;
}