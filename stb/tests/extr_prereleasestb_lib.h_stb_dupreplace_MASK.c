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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 

char *FUNC7(char *src, char *find, char *replace)
{
   size_t len_find = FUNC5(find);
   size_t len_replace = FUNC5(replace);
   int count = 0;

   char *s,*p,*q;

   s = FUNC6(src, find);
   if (s == NULL) return FUNC4(src);
   do {
      ++count;
      s = FUNC6(s + len_find, find);
   } while (s != NULL);

   p = (char *)  FUNC1(FUNC5(src) + count * (len_replace - len_find) + 1);
   if (p == NULL) return p;
   q = p;
   s = src;
   for (;;) {
      char *t = FUNC6(s, find);
      if (t == NULL) {
         FUNC3(q,s);
         FUNC0(FUNC5(p) == FUNC5(src) + count*(len_replace-len_find));
         return p;
      }
      FUNC2(q, s, t-s);
      q += t-s;
      FUNC2(q, replace, len_replace);
      q += len_replace;
      s = t + len_find;
   }
}