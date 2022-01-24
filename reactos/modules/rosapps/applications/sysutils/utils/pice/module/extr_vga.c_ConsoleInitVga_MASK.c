#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Asuchar; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  FlushKeyboardQueue; int /*<<< orphan*/  GetKeyPolled; } ;
struct TYPE_11__ {int /*<<< orphan*/  SetBackgroundColor; int /*<<< orphan*/  SetForegroundColor; int /*<<< orphan*/  HideCursor; int /*<<< orphan*/  ShowCursor; int /*<<< orphan*/  RestoreGraphicsState; int /*<<< orphan*/  SaveGraphicsState; int /*<<< orphan*/  PrintCursor; int /*<<< orphan*/  PrintLogo; int /*<<< orphan*/  HatchLine; int /*<<< orphan*/  InvertLine; int /*<<< orphan*/  ClrLine; int /*<<< orphan*/  PrintGraf; int /*<<< orphan*/  CopyLineTo; } ;
struct TYPE_9__ {int LowPart; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef  scalar_t__ PUSHORT ;
typedef  TYPE_3__ PHYSICAL_ADDRESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ClrLineVga ; 
 int /*<<< orphan*/  CopyLineToVga ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FONTBUFFERSIZE ; 
 int GLOBAL_SCREEN_HEIGHT ; 
 int GLOBAL_SCREEN_WIDTH ; 
 int /*<<< orphan*/  HatchLineVga ; 
 int /*<<< orphan*/  HideCursorVga ; 
 int /*<<< orphan*/  InvertLineVga ; 
 int /*<<< orphan*/  KeyboardFlushKeyboardQueue ; 
 int /*<<< orphan*/  KeyboardGetKeyPolled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MmNonCached ; 
 int /*<<< orphan*/  NONPAGEDPOOL ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PrintCursorVga ; 
 int /*<<< orphan*/  PrintGrafVga ; 
 int /*<<< orphan*/  PrintLogoVga ; 
 int /*<<< orphan*/  RestoreGraphicsStateVga ; 
 int /*<<< orphan*/  SCREEN_BUFFER_SIZE ; 
 int /*<<< orphan*/  SaveGraphicsStateVga ; 
 int /*<<< orphan*/  SetBackgroundColorVga ; 
 int /*<<< orphan*/  SetForegroundColorVga ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShowCursorVga ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__ attr ; 
 TYPE_5__ ihandlers ; 
 TYPE_4__ ohandlers ; 
 void* pFontBufferVga ; 
 void* pScreenBufferHardwareVga ; 
 void* pScreenBufferTempVga ; 
 void* pScreenBufferVga ; 
 int /*<<< orphan*/  wWindowVga ; 

BOOLEAN FUNC8(void)
{
	BOOLEAN bResult = FALSE;
    PUSHORT p;
	PHYSICAL_ADDRESS FrameBuffer;
	PHYSICAL_ADDRESS FontBuffer;


    FUNC1();

    ohandlers.CopyLineTo            = CopyLineToVga;
    ohandlers.PrintGraf             = PrintGrafVga;
    ohandlers.ClrLine               = ClrLineVga;
    ohandlers.InvertLine            = InvertLineVga;
    ohandlers.HatchLine             = HatchLineVga;
    ohandlers.PrintLogo             = PrintLogoVga;
    ohandlers.PrintCursor           = PrintCursorVga;
    ohandlers.SaveGraphicsState     = SaveGraphicsStateVga;
    ohandlers.RestoreGraphicsState  = RestoreGraphicsStateVga;
    ohandlers.ShowCursor            = ShowCursorVga;
    ohandlers.HideCursor            = HideCursorVga;
    ohandlers.SetForegroundColor    = SetForegroundColorVga;
    ohandlers.SetBackgroundColor    = SetBackgroundColorVga;

    ihandlers.GetKeyPolled          = KeyboardGetKeyPolled;
    ihandlers.FlushKeyboardQueue    = KeyboardFlushKeyboardQueue;

    FUNC7(wWindowVga);

    GLOBAL_SCREEN_WIDTH = 80;
#ifndef VGA_EXTENDED
    GLOBAL_SCREEN_HEIGHT = 25;
#else // VGA_EXTENDED
    GLOBAL_SCREEN_HEIGHT = 50;
#endif // VGA_EXTENDED

    attr.u.Asuchar = 0x07;

    // the real framebuffer
	FrameBuffer.u.LowPart = 0xB8000;
	pScreenBufferHardwareVga = FUNC4(FrameBuffer,SCREEN_BUFFER_SIZE,MmNonCached);

	//The real font buffer
	FontBuffer.u.LowPart = 0xA0000;
	pFontBufferVga = FUNC4(FontBuffer,FONTBUFFERSIZE,MmNonCached);

    // the console
	pScreenBufferVga = FUNC5(SCREEN_BUFFER_SIZE,NONPAGEDPOOL);
    // the save area
	pScreenBufferTempVga = FUNC5(SCREEN_BUFFER_SIZE,NONPAGEDPOOL);

	if(pScreenBufferVga)
	{
        FUNC0((0,"VGA memory phys. 0x000b0000 mapped to virt. 0x%x\n",pScreenBufferVga));

        bResult = TRUE;

        p = (PUSHORT)pScreenBufferVga;

		FUNC6(pScreenBufferVga,0x0,SCREEN_BUFFER_SIZE);

        FUNC0((0,"VGA memory cleared!\n"));

        FUNC2();

        FUNC0((0,"ConsoleInitVga() SUCCESS!\n"));
	}

    FUNC3();

	return bResult;
}