
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int FlushKeyboardQueue; int (* GetKeyPolled ) () ;} ;
struct TYPE_3__ {int SetBackgroundColor; int SetForegroundColor; int HideCursor; int ShowCursor; int RestoreGraphicsState; int SaveGraphicsState; int PrintCursor; int PrintLogo; int HatchLine; int InvertLine; int ClrLine; int Flush; int PrintGraf; int CopyLineTo; } ;
typedef scalar_t__ BOOLEAN ;


 int ClrLineSerial ;
 scalar_t__ Connect (int,int) ;
 int CopyLineToSerial ;
 int ENTER_FUNC () ;
 int EmptyRingBuffer () ;
 scalar_t__ FALSE ;
 int FRAMEBUFFER_SIZE ;
 int FlushKeyboardQueueSerial ;
 int FlushSerial ;
 int GLOBAL_SCREEN_HEIGHT ;
 int GLOBAL_SCREEN_WIDTH ;
 int GetKeyPolledSerial () ;
 int HatchLineSerial ;
 int HideCursorSerial ;
 int InvertLineSerial ;
 int LEAVE_FUNC () ;
 int NONPAGEDPOOL ;
 scalar_t__ PICE_malloc (int ,int ) ;
 int PrintCursorSerial ;
 int PrintGrafSerial ;
 int PrintLogoSerial ;
 int RestoreGraphicsStateSerial ;
 int SaveGraphicsStateSerial ;
 int SetBackgroundColorSerial ;
 int SetForegroundColorSerial ;
 int SetWindowGeometry (int ) ;
 int SetupSerial (int,int) ;
 int ShowCursorSerial ;
 scalar_t__ TRUE ;
 TYPE_2__ ihandlers ;
 TYPE_1__ ohandlers ;
 scalar_t__ pScreenBufferSerial ;
 int wWindowSerial ;

BOOLEAN ConsoleInitSerial(void)
{
 BOOLEAN bResult = FALSE;

    ENTER_FUNC();

    ohandlers.CopyLineTo = CopyLineToSerial;
    ohandlers.PrintGraf = PrintGrafSerial;
    ohandlers.Flush = FlushSerial;
    ohandlers.ClrLine = ClrLineSerial;
    ohandlers.InvertLine = InvertLineSerial;
    ohandlers.HatchLine = HatchLineSerial;
    ohandlers.PrintLogo = PrintLogoSerial;
    ohandlers.PrintCursor = PrintCursorSerial;
    ohandlers.SaveGraphicsState = SaveGraphicsStateSerial;
    ohandlers.RestoreGraphicsState = RestoreGraphicsStateSerial;
    ohandlers.ShowCursor = ShowCursorSerial;
    ohandlers.HideCursor = HideCursorSerial;
    ohandlers.SetForegroundColor = SetForegroundColorSerial;
    ohandlers.SetBackgroundColor = SetBackgroundColorSerial;

    ihandlers.GetKeyPolled = GetKeyPolledSerial;
    ihandlers.FlushKeyboardQueue = FlushKeyboardQueueSerial;

    SetWindowGeometry(wWindowSerial);

    GLOBAL_SCREEN_WIDTH = 80;
    GLOBAL_SCREEN_HEIGHT = 60;

 pScreenBufferSerial = PICE_malloc(FRAMEBUFFER_SIZE, NONPAGEDPOOL);

    if(pScreenBufferSerial)
    {
     bResult = TRUE;

        EmptyRingBuffer();

        SetupSerial(1,115200);


        bResult = Connect(GLOBAL_SCREEN_WIDTH,GLOBAL_SCREEN_HEIGHT);

        if(bResult)
        {
            GetKeyPolledSerial();
        }
    }

    LEAVE_FUNC();

 return bResult;
}
