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
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int LINES_IN_COMMAND_BUFFER ; 
 int ulCommandInPos ; 
 int ulCommandLastPos ; 

ULONG FUNC3(void)
{
    ULONG ulResult = (ulCommandInPos-ulCommandLastPos)%LINES_IN_COMMAND_BUFFER;

    FUNC1();

    FUNC0((0,"GetLinesInCommandHistory() returns %u (ulIn %u ulLast %u)\n",ulResult,ulCommandInPos,ulCommandLastPos));

    FUNC2();

    return ulResult;
}