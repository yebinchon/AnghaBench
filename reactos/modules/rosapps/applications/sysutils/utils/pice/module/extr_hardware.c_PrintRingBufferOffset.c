
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
 scalar_t__ ulInPos ;
 TYPE_1__* wWindow ;

BOOLEAN PrintRingBufferOffset(ULONG ulLines,ULONG ulOffset)
{
 ULONG ulLinesInRingBuffer = LinesInRingBuffer();
 ULONG ulOutPos,i=0;




 if(!ulLinesInRingBuffer)
    {
        DPRINT((0,"PrintRingBufferOffset(): ulLinesInRingBuffer is 0\n"));
        LEAVE_FUNC();
  return FALSE;
    }


 if(ulLinesInRingBuffer < ulLines)
    {
        ulLines = ulLinesInRingBuffer;
    }

 if(ulLinesInRingBuffer < ulOffset+ulLines)
    {
        DPRINT((0,"PrintRingBufferOffset(): ulLinesInRingBuffer < ulOffset+ulLines\n"));
        LEAVE_FUNC();
        return FALSE;
    }

    DPRINT((0,"PrintRingBufferOffset(): ulLinesInRingBuffer %u ulLines %u ulOffset %u\n",ulLinesInRingBuffer,ulLines,ulOffset));

    ulOutPos = (ulInPos-ulOffset-ulLines)%LINES_IN_BUFFER;

    DPRINT((0,"PrintRingBufferOffset(): ulOutPos = %u\n",ulOutPos));

    if(ulOutPos == ulInPos)
    {
        DPRINT((0,"PrintRingBufferOffset(): ulOutPos == ulInPos\n"));
        LEAVE_FUNC();
        return FALSE;
    }


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
