
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Asuchar; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
struct TYPE_12__ {int FlushKeyboardQueue; int GetKeyPolled; } ;
struct TYPE_11__ {int SetBackgroundColor; int SetForegroundColor; int HideCursor; int ShowCursor; int RestoreGraphicsState; int SaveGraphicsState; int PrintCursor; int PrintLogo; int HatchLine; int InvertLine; int ClrLine; int PrintGraf; int CopyLineTo; } ;
struct TYPE_9__ {int LowPart; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef scalar_t__ PUSHORT ;
typedef TYPE_3__ PHYSICAL_ADDRESS ;
typedef int BOOLEAN ;


 int ClrLineVga ;
 int CopyLineToVga ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int EmptyRingBuffer () ;
 int FALSE ;
 int FONTBUFFERSIZE ;
 int GLOBAL_SCREEN_HEIGHT ;
 int GLOBAL_SCREEN_WIDTH ;
 int HatchLineVga ;
 int HideCursorVga ;
 int InvertLineVga ;
 int KeyboardFlushKeyboardQueue ;
 int KeyboardGetKeyPolled ;
 int LEAVE_FUNC () ;
 void* MmMapIoSpace (TYPE_3__,int ,int ) ;
 int MmNonCached ;
 int NONPAGEDPOOL ;
 void* PICE_malloc (int ,int ) ;
 int PICE_memset (void*,int,int ) ;
 int PrintCursorVga ;
 int PrintGrafVga ;
 int PrintLogoVga ;
 int RestoreGraphicsStateVga ;
 int SCREEN_BUFFER_SIZE ;
 int SaveGraphicsStateVga ;
 int SetBackgroundColorVga ;
 int SetForegroundColorVga ;
 int SetWindowGeometry (int ) ;
 int ShowCursorVga ;
 int TRUE ;
 TYPE_6__ attr ;
 TYPE_5__ ihandlers ;
 TYPE_4__ ohandlers ;
 void* pFontBufferVga ;
 void* pScreenBufferHardwareVga ;
 void* pScreenBufferTempVga ;
 void* pScreenBufferVga ;
 int wWindowVga ;

BOOLEAN ConsoleInitVga(void)
{
 BOOLEAN bResult = FALSE;
    PUSHORT p;
 PHYSICAL_ADDRESS FrameBuffer;
 PHYSICAL_ADDRESS FontBuffer;


    ENTER_FUNC();

    ohandlers.CopyLineTo = CopyLineToVga;
    ohandlers.PrintGraf = PrintGrafVga;
    ohandlers.ClrLine = ClrLineVga;
    ohandlers.InvertLine = InvertLineVga;
    ohandlers.HatchLine = HatchLineVga;
    ohandlers.PrintLogo = PrintLogoVga;
    ohandlers.PrintCursor = PrintCursorVga;
    ohandlers.SaveGraphicsState = SaveGraphicsStateVga;
    ohandlers.RestoreGraphicsState = RestoreGraphicsStateVga;
    ohandlers.ShowCursor = ShowCursorVga;
    ohandlers.HideCursor = HideCursorVga;
    ohandlers.SetForegroundColor = SetForegroundColorVga;
    ohandlers.SetBackgroundColor = SetBackgroundColorVga;

    ihandlers.GetKeyPolled = KeyboardGetKeyPolled;
    ihandlers.FlushKeyboardQueue = KeyboardFlushKeyboardQueue;

    SetWindowGeometry(wWindowVga);

    GLOBAL_SCREEN_WIDTH = 80;

    GLOBAL_SCREEN_HEIGHT = 25;




    attr.u.Asuchar = 0x07;


 FrameBuffer.u.LowPart = 0xB8000;
 pScreenBufferHardwareVga = MmMapIoSpace(FrameBuffer,SCREEN_BUFFER_SIZE,MmNonCached);


 FontBuffer.u.LowPart = 0xA0000;
 pFontBufferVga = MmMapIoSpace(FontBuffer,FONTBUFFERSIZE,MmNonCached);


 pScreenBufferVga = PICE_malloc(SCREEN_BUFFER_SIZE,NONPAGEDPOOL);

 pScreenBufferTempVga = PICE_malloc(SCREEN_BUFFER_SIZE,NONPAGEDPOOL);

 if(pScreenBufferVga)
 {
        DPRINT((0,"VGA memory phys. 0x000b0000 mapped to virt. 0x%x\n",pScreenBufferVga));

        bResult = TRUE;

        p = (PUSHORT)pScreenBufferVga;

  PICE_memset(pScreenBufferVga,0x0,SCREEN_BUFFER_SIZE);

        DPRINT((0,"VGA memory cleared!\n"));

        EmptyRingBuffer();

        DPRINT((0,"ConsoleInitVga() SUCCESS!\n"));
 }

    LEAVE_FUNC();

 return bResult;
}
