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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int g_nbIterations ; 

void FUNC1(unsigned nbLoops)
{
    g_nbIterations = nbLoops;
    FUNC0(3, "- test >= %u seconds per compression / decompression -\n", g_nbIterations);
}