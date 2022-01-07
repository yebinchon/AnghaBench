
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * text; } ;
typedef TYPE_1__ pdf_text_object_state ;
typedef int fz_text ;
typedef int fz_context ;



fz_text *
pdf_tos_get_text(fz_context *ctx, pdf_text_object_state *tos)
{
 fz_text *text = tos->text;

 tos->text = ((void*)0);

 return text;
}
