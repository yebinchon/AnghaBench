
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_4__ {void* tlm; void* tm; } ;
struct TYPE_5__ {int BT_pending; TYPE_1__ tos; } ;
typedef TYPE_2__ pdf_filter_processor ;
typedef int fz_context ;


 int filter_flush (int *,TYPE_2__*,int ) ;
 void* fz_identity ;

__attribute__((used)) static void
pdf_filter_BT(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, 0);
 p->tos.tm = fz_identity;
 p->tos.tlm = fz_identity;
 p->BT_pending = 1;
}
