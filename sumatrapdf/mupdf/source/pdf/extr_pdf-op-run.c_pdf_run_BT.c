
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tlm; void* tm; } ;
struct TYPE_4__ {TYPE_1__ tos; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 void* fz_identity ;

__attribute__((used)) static void pdf_run_BT(fz_context *ctx, pdf_processor *proc)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->tos.tm = fz_identity;
 pr->tos.tlm = fz_identity;
}
