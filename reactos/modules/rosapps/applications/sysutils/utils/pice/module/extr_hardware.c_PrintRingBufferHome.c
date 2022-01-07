
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ cy; scalar_t__ usCurY; scalar_t__ usCurX; } ;
typedef int BOOLEAN ;


 int ClrLine (scalar_t__) ;
 int DPRINT (int ) ;
 int FALSE ;
 int Home (size_t) ;
 int LEAVE_FUNC () ;
 scalar_t__ LINES_IN_BUFFER ;
 scalar_t__ LinesInRingBuffer () ;
 size_t OUTPUT_WINDOW ;
 int OUTPUT_WINDOW_UNBUFFERED ;
 scalar_t__ PICE_strlen (char*) ;
 int Print (int ,char*) ;
 int TRUE ;
 char** aBuffers ;
 size_t ulInPos ;
 scalar_t__ ulLastPos ;
 TYPE_1__* wWindow ;

BOOLEAN PrintRingBufferHome(ULONG ulLines)
{
 ULONG ulDelta = LinesInRingBuffer();
 ULONG ulOutPos,i=0;




 if(!ulDelta)
    {
        DPRINT((0,"PrintRingBufferHome(): no lines in ring buffer\n"));
        LEAVE_FUNC();
  return FALSE;
    }


 if(ulDelta < ulLines)
    {
        ulLines = ulDelta;
    }


 ulOutPos = ulLastPos;


 Home(OUTPUT_WINDOW);


 while(ulLines--)
 {
        ClrLine(wWindow[OUTPUT_WINDOW].y+i);
  Print(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulOutPos]);
  i++;
  ulOutPos = (ulOutPos+1)%LINES_IN_BUFFER;
 }

    if(aBuffers[ulInPos][0]==':')
    {
        ClrLine(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy-1);
        wWindow[OUTPUT_WINDOW].usCurY = wWindow[OUTPUT_WINDOW].cy-1;
  Print(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulInPos]);
     wWindow[OUTPUT_WINDOW].usCurX = PICE_strlen(aBuffers[ulInPos])+1;
    }



    return TRUE;
}
