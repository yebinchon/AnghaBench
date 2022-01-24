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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int FUNC2 (char**) ; 

void   FUNC3(char **opts)
{
   int i;
   char ** o2 = opts;
   for (i=0; i < FUNC2(o2); ++i)
      FUNC0(o2[i]);
   FUNC1(o2);
}