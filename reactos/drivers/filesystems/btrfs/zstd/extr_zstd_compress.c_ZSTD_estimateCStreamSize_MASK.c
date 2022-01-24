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
 size_t FUNC0 (int) ; 

size_t FUNC1(int compressionLevel)
{
    int level;
    size_t memBudget = 0;
    for (level=1; level<=compressionLevel; level++) {
        size_t const newMB = FUNC0(level);
        if (newMB > memBudget) memBudget = newMB;
    }
    return memBudget;
}