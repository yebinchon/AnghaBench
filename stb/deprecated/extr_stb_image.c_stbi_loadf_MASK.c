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
 float* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 float* FUNC3 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 

float *FUNC4(char const *filename, int *x, int *y, int *comp, int req_comp)
{
   FILE *f = FUNC2(filename, "rb");
   float *result;
   if (!f) return FUNC0("can't fopen", "Unable to open file");
   result = FUNC3(f,x,y,comp,req_comp);
   FUNC1(f);
   return result;
}