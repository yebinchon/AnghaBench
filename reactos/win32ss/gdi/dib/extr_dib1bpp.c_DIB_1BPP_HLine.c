
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
DIB_1BPP_HLine(SURFOBJ *SurfObj, LONG x1, LONG x2, LONG y, ULONG c)
{
  while(x1 < x2)
  {
    DIB_1BPP_PutPixel(SurfObj, x1, y, c);
    x1++;
  }
}
