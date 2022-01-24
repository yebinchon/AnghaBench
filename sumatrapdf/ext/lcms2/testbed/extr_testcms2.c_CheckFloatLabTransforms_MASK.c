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
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(void)
{
    return FUNC1(FUNC3(FUNC0(), NULL), FUNC3(FUNC0(), NULL),  "Lab4/Lab4") &&
           FUNC1(FUNC2(FUNC0(), NULL), FUNC2(FUNC0(), NULL),  "Lab2/Lab2") &&
           FUNC1(FUNC3(FUNC0(), NULL), FUNC2(FUNC0(), NULL),  "Lab4/Lab2") &&
           FUNC1(FUNC2(FUNC0(), NULL), FUNC3(FUNC0(), NULL),  "Lab2/Lab4");
}