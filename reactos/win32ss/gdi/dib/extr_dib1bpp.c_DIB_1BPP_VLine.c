
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int SURFOBJ ;
typedef scalar_t__ LONG ;


 int DIB_1BPP_PutPixel (int *,scalar_t__,scalar_t__,int ) ;

VOID
DIB_1BPP_VLine(SURFOBJ *SurfObj, LONG x, LONG y1, LONG y2, ULONG c)
{
  while(y1 < y2)
  {
    DIB_1BPP_PutPixel(SurfObj, x, y1, c);
    y1++;
  }
}
