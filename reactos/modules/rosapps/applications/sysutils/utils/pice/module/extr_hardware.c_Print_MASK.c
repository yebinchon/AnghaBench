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
typedef  size_t USHORT ;
typedef  size_t ULONG ;
typedef  int UCHAR ;
struct TYPE_2__ {int usCurX; scalar_t__ y; scalar_t__ usCurY; scalar_t__ cy; scalar_t__ bScrollDisabled; } ;
typedef  char* LPSTR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int GLOBAL_SCREEN_WIDTH ; 
 size_t OUTPUT_WINDOW ; 
 size_t OUTPUT_WINDOW_UNBUFFERED ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 scalar_t__ TRUE ; 
 char** aBuffers ; 
 int /*<<< orphan*/  bConsoleIsInitialized ; 
 size_t ulInPos ; 
 TYPE_1__* wWindow ; 

void FUNC7(USHORT Window,LPSTR p)
{
	ULONG i;

	FUNC3((11,"%s",p));

    //ENTER_FUNC();
    if(!bConsoleIsInitialized)
    {
        FUNC3((0,"Print(): console is not initialized!\n"));
        //LEAVE_FUNC();
        return;
    }


    // the OUTPUT_WINDOW is specially handled
	if(Window == OUTPUT_WINDOW)
	{
        FUNC3((0,"Print(): OUTPUT_WINDOW\n"));
		if(FUNC0(p))
        {
            FUNC3((0,"Print(): checking ring buffer\n"));
            FUNC1();
        }
        else
        {
            FUNC3((0,"Print(): outputting a line from ring buffer\n"));
            wWindow[OUTPUT_WINDOW].usCurX = 0;
		    FUNC2(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].usCurY);
    		FUNC7(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulInPos]);
        }
	}
	else
	{
        BOOLEAN bOutput = TRUE;

		if(Window == OUTPUT_WINDOW_UNBUFFERED)
        {
			Window = OUTPUT_WINDOW;
        }

        for(i=0;p[i]!=0;i++)
		{
            if(wWindow[Window].usCurX > (GLOBAL_SCREEN_WIDTH-1))
                bOutput = FALSE;

			// newline
			if(p[i]=='\n')
			{
				wWindow[Window].usCurX = 0;
				wWindow[Window].usCurY++;
				if(wWindow[Window].usCurY>=wWindow[Window].cy)
				{
					wWindow[Window].usCurY=wWindow[Window].cy-1;
					FUNC6(Window);
				}
                if(wWindow[Window].bScrollDisabled==TRUE)break;
			}
			// backspace
			else if(p[i]=='\b')
			{
				if(wWindow[Window].usCurX>0)
				{
					wWindow[Window].usCurX--;
                    if(bOutput)
					    FUNC5(wWindow[Window].usCurX,wWindow[Window].y+wWindow[Window].usCurY,0x20);
				}

			}
			// TAB
			else if(p[i]=='\t')
			{
				if((wWindow[Window].usCurX + 4) < (GLOBAL_SCREEN_WIDTH-1))
				{
					wWindow[Window].usCurX += 4;
				}
			}
			else
			{
				if((UCHAR)p[i]<0x20 || (UCHAR)p[i]>0x7f)
					p[i]=0x20;

                if(bOutput)
    				FUNC5(wWindow[Window].usCurX,wWindow[Window].y+wWindow[Window].usCurY,p[i]);

				wWindow[Window].usCurX++;
			}
		}

        // flush
        FUNC4();
	}
    //LEAVE_FUNC();
}