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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ g_cm ; 
 scalar_t__ g_ipp ; 
 scalar_t__ g_tm ; 

__attribute__((used)) static void FUNC4(void)
{
    if (g_ipp)
        FUNC2(g_ipp);
    if (g_cm)
        FUNC1(g_cm);
    if (g_tm)
        FUNC3(g_tm);
    FUNC0();
}