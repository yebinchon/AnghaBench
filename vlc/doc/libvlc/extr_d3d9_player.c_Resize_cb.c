
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {void (* ReportSize ) (void*,unsigned int,unsigned int) ;void* ReportOpaque; unsigned int width; unsigned int height; int sizeLock; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 void stub1 (void*,unsigned int,unsigned int) ;

__attribute__((used)) static void Resize_cb( void *opaque,
                       void (*report_size_change)(void *report_opaque, unsigned width, unsigned height),
                       void *report_opaque )
{
    struct render_context *ctx = opaque;
    EnterCriticalSection(&ctx->sizeLock);
    ctx->ReportSize = report_size_change;
    ctx->ReportOpaque = report_opaque;

    if (ctx->ReportSize != ((void*)0))
    {

        ctx->ReportSize(ctx->ReportOpaque, ctx->width, ctx->height);
    }
    LeaveCriticalSection(&ctx->sizeLock);
}
