
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int BitmapDc; int Bitmap; } ;
struct TYPE_5__ {scalar_t__ WndWidth; scalar_t__ WndHeight; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef TYPE_2__* PALPHABLEND_CONTEXT ;
typedef scalar_t__ INT ;
typedef int ALPHABLEND_CONTEXT ;


 int CreateCompatibleBitmap (int ,scalar_t__,scalar_t__) ;
 int CreateCompatibleDC (int ) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int RGB (int,int,int) ;
 int SelectObject (int ,int ) ;
 int SetPixel (int ,scalar_t__,scalar_t__,int ) ;

unsigned
AlphaBlendInit(void **Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  PALPHABLEND_CONTEXT ctx = HeapAlloc(GetProcessHeap(), 0, sizeof (ALPHABLEND_CONTEXT));
  INT x, y;

  ctx->BitmapDc = CreateCompatibleDC(PerfInfo->BackgroundDc);
  ctx->Bitmap = CreateCompatibleBitmap(PerfInfo->BackgroundDc, PerfInfo->WndWidth, PerfInfo->WndHeight);
  SelectObject(ctx->BitmapDc, ctx->Bitmap);

  for (y = 0; y < PerfInfo->WndHeight; y++)
    {
      for (x = 0; x < PerfInfo->WndWidth; x++)
        {
          SetPixel(ctx->BitmapDc, x, y, RGB(0xff, 0x00, 0x00));
        }
    }

  *Context = ctx;

  return Reps;
}
