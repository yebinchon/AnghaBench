
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tlm; int tm; } ;
typedef TYPE_1__ pdf_text_object_state ;


 int fz_pre_translate (int ,int ,float) ;

void
pdf_tos_newline(pdf_text_object_state *tos, float leading)
{
 tos->tlm = fz_pre_translate(tos->tlm, 0, -leading);
 tos->tm = tos->tlm;
}
