#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cy; scalar_t__ y; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__) ; 
 scalar_t__ SCANCODE_ESC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WHITE ; 
 scalar_t__ ucKeyPressedWhileIdle ; 
 scalar_t__ ulCountForWaitKey ; 
 TYPE_1__* wWindow ; 

BOOLEAN FUNC7(void)
{
    BOOLEAN result=TRUE;

    if(ulCountForWaitKey == 0)
        FUNC6(TRUE);

    ulCountForWaitKey++;

	if(ulCountForWaitKey == (wWindow[OUTPUT_WINDOW].cy-1))
	{
        FUNC6(FALSE);

    	FUNC3(wWindow[OUTPUT_WINDOW].cy-1);

        ulCountForWaitKey = 0;

		FUNC5(WHITE);
		FUNC0(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
		FUNC4(" Press any key to continue listing or press ESC to stop... ",1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
		ucKeyPressedWhileIdle=0;
        while(!(ucKeyPressedWhileIdle=FUNC1()))
		{
			FUNC2(FALSE);
		}
		FUNC5(BLACK);
		// if ESCAPE then indicate retreat
		if(ucKeyPressedWhileIdle==SCANCODE_ESC)
		{
			result=FALSE;
		}
		ucKeyPressedWhileIdle=0;
	}


    return result;
}