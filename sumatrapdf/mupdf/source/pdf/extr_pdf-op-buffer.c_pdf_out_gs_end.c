
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {scalar_t__ extgstate; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int fz_context ;



__attribute__((used)) static void
pdf_out_gs_end(fz_context *ctx, pdf_processor *proc)
{
 ((pdf_output_processor*)proc)->extgstate = 0;
}
