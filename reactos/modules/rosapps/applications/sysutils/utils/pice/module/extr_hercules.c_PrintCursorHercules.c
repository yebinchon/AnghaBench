
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int usCurX; int y; int usCurY; } ;
typedef int* PUCHAR ;
typedef scalar_t__ BOOLEAN ;


 int KeStallExecutionProcessor (int) ;
 size_t OUTPUT_WINDOW ;
 scalar_t__ bCursorEnabled ;
 int bRev ;
 int* pVgaOffset ;
 TYPE_1__* wWindow ;

void PrintCursorHercules(BOOLEAN bForce)
{
    static ULONG count=0;

 if( (bForce) || ((count++>100) && bCursorEnabled) )
 {
     ULONG i;
     ULONG x,y;
        ULONG _line;

        x=wWindow[OUTPUT_WINDOW].usCurX;
        y=wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].usCurY;

        _line = y<<3;
  for(i=0;i<8;i++,_line++)
  {
            *(PUCHAR)(pVgaOffset[_line & 0x3] + ( 90* (_line >> 2) ) + x) ^= 0xFF ;
  }
  bRev=!bRev;
        count=0;
    }

 KeStallExecutionProcessor(2500);
}
