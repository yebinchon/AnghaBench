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

void FUNC3(char **files)
{
   char **f2 = files;
   int i;
   for (i=0; i < FUNC2(f2); ++i)
      FUNC0(f2[i]);
   FUNC1(f2);
}