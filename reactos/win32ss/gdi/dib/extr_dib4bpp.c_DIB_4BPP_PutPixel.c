
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int lDelta; scalar_t__ pvScan0; } ;
typedef TYPE_1__ SURFOBJ ;
typedef int* PBYTE ;
typedef int LONG ;
typedef int BYTE ;


 int* notmask ;

VOID
DIB_4BPP_PutPixel(SURFOBJ *SurfObj, LONG x, LONG y, ULONG c)
{
   PBYTE addr = (PBYTE)SurfObj->pvScan0 + (x>>1) + y * SurfObj->lDelta;
   *addr = (*addr & notmask[x&1]) | (BYTE)(c << ((1-(x&1))<<2));
}
