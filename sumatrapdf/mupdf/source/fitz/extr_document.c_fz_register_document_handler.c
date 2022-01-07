
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; int const** handler; } ;
typedef TYPE_1__ fz_document_handler_context ;
typedef int fz_document_handler ;
struct TYPE_6__ {TYPE_1__* handler; } ;
typedef TYPE_2__ fz_context ;


 int FZ_DOCUMENT_HANDLER_MAX ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (TYPE_2__*,int ,char*) ;

void fz_register_document_handler(fz_context *ctx, const fz_document_handler *handler)
{
 fz_document_handler_context *dc;
 int i;

 if (!handler)
  return;

 dc = ctx->handler;
 if (dc == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "Document handler list not found");

 for (i = 0; i < dc->count; i++)
  if (dc->handler[i] == handler)
   return;

 if (dc->count >= FZ_DOCUMENT_HANDLER_MAX)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Too many document handlers");

 dc->handler[dc->count++] = handler;
}
