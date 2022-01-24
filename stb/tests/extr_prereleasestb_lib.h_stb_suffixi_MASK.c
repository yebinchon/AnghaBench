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
 scalar_t__ FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 

int FUNC2(char *s, char *t)
{
   size_t n = FUNC1(s);
   size_t m = FUNC1(t);
   if (m <= n)
      return 0 == FUNC0(s+n-m, t);
   else
      return 0;
}