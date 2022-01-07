
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cy; scalar_t__ y; } ;
typedef int BOOLEAN ;


 int BLACK ;
 int ClrLine (scalar_t__) ;
 int FALSE ;
 scalar_t__ GetKeyPolled () ;
 size_t OUTPUT_WINDOW ;
 int PrintCursor (int ) ;
 int PrintRingBuffer (int) ;
 int PutChar (char*,int,scalar_t__) ;
 scalar_t__ SCANCODE_ESC ;
 int SetBackgroundColor (int ) ;
 int SuspendPrintRingBuffer (int ) ;
 int TRUE ;
 int WHITE ;
 scalar_t__ ucKeyPressedWhileIdle ;
 scalar_t__ ulCountForWaitKey ;
 TYPE_1__* wWindow ;

BOOLEAN WaitForKey(void)
{
    BOOLEAN result=TRUE;

    if(ulCountForWaitKey == 0)
        SuspendPrintRingBuffer(TRUE);

    ulCountForWaitKey++;

 if(ulCountForWaitKey == (wWindow[OUTPUT_WINDOW].cy-1))
 {
        SuspendPrintRingBuffer(FALSE);

     PrintRingBuffer(wWindow[OUTPUT_WINDOW].cy-1);

        ulCountForWaitKey = 0;

  SetBackgroundColor(WHITE);
  ClrLine(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
  PutChar(" Press any key to continue listing or press ESC to stop... ",1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
  ucKeyPressedWhileIdle=0;
        while(!(ucKeyPressedWhileIdle=GetKeyPolled()))
  {
   PrintCursor(FALSE);
  }
  SetBackgroundColor(BLACK);

  if(ucKeyPressedWhileIdle==SCANCODE_ESC)
  {
   result=FALSE;
  }
  ucKeyPressedWhileIdle=0;
 }


    return result;
}
