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
 char* FUNC0 (char*) ; 
 char** FUNC1 (char*,int*) ; 

char ** FUNC2(char *name, int *len, char comment)
{
   int i,n,o=0;
   char **s = FUNC1(name, &n);
   if (s == NULL) return NULL;
   for (i=0; i < n; ++i) {
      char *p = FUNC0(s[i]);
      if (*p && *p != comment)
         s[o++] = p;
   }
   s[o] = NULL;
   if (len) *len = o;
   return s;
}