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
 double M_PI ; 
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (float) ; 

__attribute__((used)) static void FUNC2(int n, float *window)
{
   int n2 = n >> 1, i;
   for (i=0; i < n2; ++i)
      window[i] = (float) FUNC0(0.5 * M_PI * FUNC1((float) FUNC0((i - 0 + 0.5) / n2 * 0.5 * M_PI)));
}