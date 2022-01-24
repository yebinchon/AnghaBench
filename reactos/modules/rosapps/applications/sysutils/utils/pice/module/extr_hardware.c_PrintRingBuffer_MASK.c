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
typedef  scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ y; int usCurX; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ LINES_IN_BUFFER ; 
 scalar_t__ FUNC4 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  OUTPUT_WINDOW_UNBUFFERED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char** aBuffers ; 
 scalar_t__ bSuspendPrintRingBuffer ; 
 scalar_t__ ulInPos ; 
 scalar_t__ ulOldDelta ; 
 TYPE_1__* wWindow ; 

void FUNC6(ULONG ulLines)
{
	ULONG ulDelta = FUNC4();
	ULONG ulOutPos,i=0;

//    ENTER_FUNC();

	if(bSuspendPrintRingBuffer)
    {
        FUNC1((0,"PrintRingBuffer(): suspended\n"));
        FUNC3();
        return;
    }

	if(!ulDelta)
    {
        FUNC1((0,"PrintRingBuffer(): no lines in ring buffer\n"));
        FUNC3();
		return;
    }

    if(ulDelta<ulOldDelta)
    {
        FUNC1((0,"PrintRingBuffer(): lines already output\n"));
        FUNC3();
        return;
    }

    ulOldDelta = ulDelta;

	if(ulDelta < ulLines)
    {
        FUNC1((0,"PrintRingBuffer(): less lines than requested: ulDelta: %x, ulLines: %x\n", ulDelta, ulLines));
		ulLines = ulDelta;
    }

	ulOutPos = (ulInPos-ulLines)%LINES_IN_BUFFER;
    FUNC1((0,"PrintRingBuffer(): ulOutPos = %u\n",ulOutPos));

    FUNC2(OUTPUT_WINDOW);

	while(ulLines--)
	{
        FUNC0(wWindow[OUTPUT_WINDOW].y+i);
		FUNC5(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulOutPos]);
	    i++;
		ulOutPos = (ulOutPos+1)%LINES_IN_BUFFER;
	}

    if(aBuffers[ulOutPos][0]==':')
    {
        FUNC0(wWindow[OUTPUT_WINDOW].y+i);
		FUNC5(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulOutPos]);
    	wWindow[OUTPUT_WINDOW].usCurX = 1;
    }

//    LEAVE_FUNC();
}