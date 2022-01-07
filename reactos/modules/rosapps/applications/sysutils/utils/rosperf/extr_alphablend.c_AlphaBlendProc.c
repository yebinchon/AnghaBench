
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int SourceConstantAlpha; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {int BitmapDc; } ;
struct TYPE_6__ {int WndHeight; int WndWidth; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef TYPE_2__* PALPHABLEND_CONTEXT ;
typedef TYPE_3__ BLENDFUNCTION ;


 int AC_SRC_OVER ;
 int AlphaBlend (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,TYPE_3__) ;
 int DbgPrint (char*,int ) ;
 int GetLastError () ;
 int PATCOPY ;
 int PatBlt (int ,int ,int ,int ,int ,int ) ;

void
AlphaBlendProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  PALPHABLEND_CONTEXT ctx = Context;
  unsigned Rep;
  BLENDFUNCTION BlendFunc = { AC_SRC_OVER, 0, 0, 0 };

  for (Rep = 0; Rep < Reps; Rep++)
    {
      BlendFunc.SourceConstantAlpha = 255 * Rep / Reps;



      if (!AlphaBlend(PerfInfo->BackgroundDc, 0, 0, PerfInfo->WndWidth, PerfInfo->WndHeight,
                      ctx->BitmapDc, 0, 0, PerfInfo->WndWidth, PerfInfo->WndHeight,
                      BlendFunc))
        {
          DbgPrint("AlphaBlend failed (0x%lx)\n", GetLastError());
        }
    }
}
