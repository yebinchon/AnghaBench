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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ s_cStages ; 
 scalar_t__ s_iStage ; 
 int /*<<< orphan*/  s_iStep ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0(s_iStage, s_cStages);
    if (s_iStage != s_cStages)
    {
        FUNC1("Some stage(s) skipped (Step: %d)\n", s_iStep);
    }
}