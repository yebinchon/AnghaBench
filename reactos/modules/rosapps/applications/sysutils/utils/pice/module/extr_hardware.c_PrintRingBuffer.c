
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ y; int usCurX; } ;


 int ClrLine (scalar_t__) ;
 int DPRINT (int ) ;
 int Home (size_t) ;
 int LEAVE_FUNC () ;
 scalar_t__ LINES_IN_BUFFER ;
 scalar_t__ LinesInRingBuffer () ;
 size_t OUTPUT_WINDOW ;
 int OUTPUT_WINDOW_UNBUFFERED ;
 int Print (int ,char*) ;
 char** aBuffers ;
 scalar_t__ bSuspendPrintRingBuffer ;
 scalar_t__ ulInPos ;
 scalar_t__ ulOldDelta ;
 TYPE_1__* wWindow ;

void PrintRingBuffer(ULONG ulLines)
{
 ULONG ulDelta = LinesInRingBuffer();
 ULONG ulOutPos,i=0;



 if(bSuspendPrintRingBuffer)
    {
        DPRINT((0,"PrintRingBuffer(): suspended\n"));
        LEAVE_FUNC();
        return;
    }

 if(!ulDelta)
    {
        DPRINT((0,"PrintRingBuffer(): no lines in ring buffer\n"));
        LEAVE_FUNC();
  return;
    }

    if(ulDelta<ulOldDelta)
    {
        DPRINT((0,"PrintRingBuffer(): lines already output\n"));
        LEAVE_FUNC();
        return;
    }

    ulOldDelta = ulDelta;

 if(ulDelta < ulLines)
    {
        DPRINT((0,"PrintRingBuffer(): less lines than requested: ulDelta: %x, ulLines: %x\n", ulDelta, ulLines));
  ulLines = ulDelta;
    }

 ulOutPos = (ulInPos-ulLines)%LINES_IN_BUFFER;
    DPRINT((0,"PrintRingBuffer(): ulOutPos = %u\n",ulOutPos));

    Home(OUTPUT_WINDOW);

 while(ulLines--)
 {
        ClrLine(wWindow[OUTPUT_WINDOW].y+i);
  Print(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulOutPos]);
     i++;
  ulOutPos = (ulOutPos+1)%LINES_IN_BUFFER;
 }

    if(aBuffers[ulOutPos][0]==':')
    {
        ClrLine(wWindow[OUTPUT_WINDOW].y+i);
  Print(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulOutPos]);
     wWindow[OUTPUT_WINDOW].usCurX = 1;
    }


}
