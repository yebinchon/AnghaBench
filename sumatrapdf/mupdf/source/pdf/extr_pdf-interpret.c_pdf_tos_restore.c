
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tlm; void* tm; } ;
typedef TYPE_1__ pdf_text_object_state ;
typedef void* fz_matrix ;
typedef int fz_context ;



void
pdf_tos_restore(fz_context *ctx, pdf_text_object_state *tos, fz_matrix save[2])
{
 tos->tm = save[0];
 tos->tlm = save[1];
}
