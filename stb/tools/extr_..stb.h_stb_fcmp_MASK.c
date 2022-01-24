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
 int STB_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(char *s1, char *s2)
{
   FILE *f = FUNC1(s1, "rb");
   FILE *g = FUNC1(s2, "rb");

   if (f == NULL || g == NULL) {
      if (f) FUNC0(f);
      if (g) {
         FUNC0(g);
         return STB_TRUE;
      }
      return f != NULL;
   }

   return FUNC2(f,g);
}