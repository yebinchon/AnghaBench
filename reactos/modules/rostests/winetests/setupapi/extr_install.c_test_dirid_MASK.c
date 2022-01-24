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
 int DIRID_NULL ; 
 int DIRID_SYSTEM ; 
 int DIRID_WINDOWS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    char expected[MAX_PATH];

    FUNC2(DIRID_NULL, "");

    FUNC1(expected, MAX_PATH);
    FUNC2(DIRID_WINDOWS, expected);

    FUNC0(expected, MAX_PATH);
    FUNC2(DIRID_SYSTEM, expected);

    FUNC3(expected, "\\unknown");
    FUNC2(40, expected);
}