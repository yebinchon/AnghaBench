
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tlm; int tm; } ;
typedef TYPE_1__ pdf_text_object_state ;
typedef int fz_matrix ;
typedef int fz_context ;



void
pdf_tos_save(fz_context *ctx, pdf_text_object_state *tos, fz_matrix save[2])
{
 save[0] = tos->tm;
 save[1] = tos->tlm;
}
