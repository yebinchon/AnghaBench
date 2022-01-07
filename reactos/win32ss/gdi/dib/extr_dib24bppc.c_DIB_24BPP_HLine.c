
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_3__ {int lDelta; scalar_t__ pvScan0; } ;
typedef TYPE_1__ SURFOBJ ;
typedef int* PUSHORT ;
typedef int* PULONG ;
typedef int* PBYTE ;
typedef int LONG ;



VOID
DIB_24BPP_HLine(SURFOBJ *SurfObj, LONG x1, LONG x2, LONG y, ULONG c)
{
  PBYTE addr = (PBYTE)SurfObj->pvScan0 + y * SurfObj->lDelta + (x1 << 1) + x1;
  ULONG Count = x2 - x1;

  if (Count < 8)
  {

    while (Count--)
    {
      *(PUSHORT)(addr) = c;
      addr += 2;
      *(addr) = c >> 16;
      addr += 1;
    }
  }
  else
  {
    ULONG Fill[3];
    ULONG MultiCount;


    while (0 != ((ULONG_PTR) addr & 0x3))
    {
      *(PUSHORT)(addr) = c;
      addr += 2;
      *(addr) = c >> 16;
      addr += 1;
      Count--;
    }
    c = c & 0xffffff;
    Fill[0] = c | (c << 24);
    Fill[1] = (c >> 8) | (c << 16);
    Fill[2] = (c << 8) | (c >> 16);
    MultiCount = Count / 4;
    do
    {
      *(PULONG)addr = Fill[0];
      addr += 4;
      *(PULONG)addr = Fill[1];
      addr += 4;
      *(PULONG)addr = Fill[2];
      addr += 4;
    }
    while (0 != --MultiCount);

    Count = Count & 0x03;
    while (0 != Count--)
    {
      *(PUSHORT)(addr) = c;
      addr += 2;
      *(addr) = c >> 16;
      addr += 1;
    }
  }
}
