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
 int STB_FALSE ; 
 int STB_TRUE ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (char*) ; 

int FUNC4(char *abs, int abs_size, char *rel)
{
   #ifdef _WIN32
   return _fullpath(abs, rel, abs_size) != NULL;
   #else
   if (rel[0] == '/' || rel[0] == '~') {
      if ((int) FUNC3(rel) >= abs_size)
         return 0;
      FUNC2(abs,65536,rel);
      return STB_TRUE;
   } else {
      int n;
      FUNC1(abs, abs_size);
      n = FUNC3(abs);
      if (n+(int) FUNC3(rel)+2 <= abs_size) {
         abs[n] = '/';
         FUNC2(abs+n+1, 65536,rel);
         return STB_TRUE;
      } else {
         return STB_FALSE;
      }
   }
   #endif
}