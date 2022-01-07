
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t USHORT ;
typedef size_t ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int usCurX; scalar_t__ y; scalar_t__ usCurY; scalar_t__ cy; scalar_t__ bScrollDisabled; } ;
typedef char* LPSTR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ AddToRingBuffer (char*) ;
 int CheckRingBuffer () ;
 int ClrLine (scalar_t__) ;
 int DPRINT (int) ;
 scalar_t__ FALSE ;
 int Flush () ;
 int GLOBAL_SCREEN_WIDTH ;
 size_t OUTPUT_WINDOW ;
 size_t OUTPUT_WINDOW_UNBUFFERED ;
 int PrintGraf (scalar_t__,scalar_t__,char) ;
 int ScrollUp (size_t) ;
 scalar_t__ TRUE ;
 char** aBuffers ;
 int bConsoleIsInitialized ;
 size_t ulInPos ;
 TYPE_1__* wWindow ;

void Print(USHORT Window,LPSTR p)
{
 ULONG i;

 DPRINT((11,"%s",p));


    if(!bConsoleIsInitialized)
    {
        DPRINT((0,"Print(): console is not initialized!\n"));

        return;
    }



 if(Window == OUTPUT_WINDOW)
 {
        DPRINT((0,"Print(): OUTPUT_WINDOW\n"));
  if(AddToRingBuffer(p))
        {
            DPRINT((0,"Print(): checking ring buffer\n"));
            CheckRingBuffer();
        }
        else
        {
            DPRINT((0,"Print(): outputting a line from ring buffer\n"));
            wWindow[OUTPUT_WINDOW].usCurX = 0;
      ClrLine(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].usCurY);
      Print(OUTPUT_WINDOW_UNBUFFERED,aBuffers[ulInPos]);
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


   if(p[i]=='\n')
   {
    wWindow[Window].usCurX = 0;
    wWindow[Window].usCurY++;
    if(wWindow[Window].usCurY>=wWindow[Window].cy)
    {
     wWindow[Window].usCurY=wWindow[Window].cy-1;
     ScrollUp(Window);
    }
                if(wWindow[Window].bScrollDisabled==TRUE)break;
   }

   else if(p[i]=='\b')
   {
    if(wWindow[Window].usCurX>0)
    {
     wWindow[Window].usCurX--;
                    if(bOutput)
         PrintGraf(wWindow[Window].usCurX,wWindow[Window].y+wWindow[Window].usCurY,0x20);
    }

   }

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
        PrintGraf(wWindow[Window].usCurX,wWindow[Window].y+wWindow[Window].usCurY,p[i]);

    wWindow[Window].usCurX++;
   }
  }


        Flush();
 }

}
