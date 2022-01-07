
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int usCurX; int y; int usCurY; } ;
typedef int BOOLEAN ;


 int GLOBAL_SCREEN_WIDTH ;
 size_t OUTPUT_WINDOW ;
 int outb_p (int,int) ;
 TYPE_1__* wWindow ;

void PrintCursorVga(BOOLEAN bForce)
{
    static ULONG count=0;
    USHORT charoffset;
    UCHAR data;
    ULONG x=wWindow[OUTPUT_WINDOW].usCurX,y=wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].usCurY;

 if( count++>250 )
 {
        count=0;

        charoffset = (y* GLOBAL_SCREEN_WIDTH + x);

  outb_p(0x0e,0x3d4);
  data=(UCHAR)((charoffset>>8)&0xFF);
  outb_p(data,0x3d5);

        outb_p(0x0f,0x3d4);
  data=(UCHAR)(charoffset & 0xFF);
  outb_p(data,0x3d5);
    }
}
