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
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t LINES_IN_COMMAND_BUFFER ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char** aszCommandLines ; 
 size_t ulCommandCurrentPos ; 
 size_t ulCommandInPos ; 
 size_t ulCommandLastPos ; 

void FUNC6(LPSTR s)
{
    ULONG i;

    FUNC1();
    FUNC0((0,"AddToCommandLineHistory(%s)\n",s));

    if(FUNC5(s))
    {
        for(i=0;i<LINES_IN_COMMAND_BUFFER;i++)
        {
            if(FUNC3(&aszCommandLines[i][1],s) == 0)
            {
                FUNC0((0,"AddToCommandLineHistory(): command line already exists\n"));
                FUNC2();
                return;
            }
        }
        aszCommandLines[ulCommandInPos][0]=':';
        FUNC4(&aszCommandLines[ulCommandInPos][1],s);
        ulCommandCurrentPos = ulCommandInPos = (ulCommandInPos +1)%LINES_IN_COMMAND_BUFFER;
        if(ulCommandInPos == ulCommandLastPos)
        {
            ulCommandLastPos = (ulCommandLastPos+1)%LINES_IN_COMMAND_BUFFER;
        }
    }

    FUNC2();
}