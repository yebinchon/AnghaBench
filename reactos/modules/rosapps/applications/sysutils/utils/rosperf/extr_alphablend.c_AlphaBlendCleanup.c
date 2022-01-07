
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Bitmap; int BitmapDc; } ;
typedef int PPERF_INFO ;
typedef TYPE_1__* PALPHABLEND_CONTEXT ;


 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

void
AlphaBlendCleanup(void *Context, PPERF_INFO PerfInfo)
{
  PALPHABLEND_CONTEXT ctx = Context;
  DeleteDC(ctx->BitmapDc);
  DeleteObject(ctx->Bitmap);
  HeapFree(GetProcessHeap(), 0, ctx);
}
