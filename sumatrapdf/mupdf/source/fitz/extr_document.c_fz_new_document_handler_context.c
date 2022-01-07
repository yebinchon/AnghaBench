
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* handler; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; } ;


 int fz_document_handler_context ;
 TYPE_3__* fz_malloc_struct (TYPE_1__*,int ) ;

void fz_new_document_handler_context(fz_context *ctx)
{
 ctx->handler = fz_malloc_struct(ctx, fz_document_handler_context);
 ctx->handler->refs = 1;
}
