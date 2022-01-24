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
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  computer_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC4(void)
{
    LPWSTR ws = NULL;

    FUNC1(FUNC3(&ws) == NERR_Success, "Computer name is retrieved\n");
    FUNC1(!FUNC0(computer_name, ws), "This is really computer name\n");
    FUNC2(ws);
}