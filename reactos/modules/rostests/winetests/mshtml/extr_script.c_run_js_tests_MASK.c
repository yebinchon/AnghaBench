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
 scalar_t__ is_ie9plus ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0("jstest.html");
    FUNC0("exectest.html");
    FUNC0("vbtest.html");
    FUNC0("events.html");
    if(is_ie9plus)
        FUNC0("nav_test.html");
    else
        FUNC1("Skipping nav_test.html on IE older than 9 (for broken ieframe onload).\n");
}