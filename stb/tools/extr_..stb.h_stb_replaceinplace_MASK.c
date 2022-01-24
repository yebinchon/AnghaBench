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
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

void FUNC5(char *src, char *find, char *replace)
{
   size_t len_find = FUNC3(find);
   size_t len_replace = FUNC3(replace);
   int delta;

   char *s,*p,*q;

   delta = (int) (len_replace - len_find);
   FUNC0(delta <= 0);
   if (delta > 0) return;

   p = FUNC4(src, find);
   if (p == NULL) return;

   s = q = p;
   while (*s) {
      FUNC1(q, replace, len_replace);
      p += len_find;
      q += len_replace;
      s = FUNC4(p, find);
      if (s == NULL) s = p + FUNC3(p);
      FUNC2(q, p, s-p);
      q += s-p;
      p = s;
   }
   *q = 0;
}