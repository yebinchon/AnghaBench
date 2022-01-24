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
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 

char *FUNC3(char *s, char *t)
{
   size_t n = FUNC2(t);
   char *z;
   if (n==0) return s;
   while ((z = FUNC0(s, *t)) != NULL) {
      if (0==FUNC1(z, t, n))
         return z;
      s = z+1;
   }
   return NULL;
}