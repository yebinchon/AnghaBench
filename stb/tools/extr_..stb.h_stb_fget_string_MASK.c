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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*,int) ; 

char *FUNC4(FILE *f, void *p)
{
   char *s;
   int len = FUNC2(f);
   if (len > 4096) return NULL;
   s = p ? FUNC3(p, len+1) : (char *) FUNC1(len+1);
   FUNC0(s, 1, len, f);
   s[len] = 0;
   return s;
}