
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float a; float b; float c; float d; float e; float f; } ;
struct TYPE_5__ {TYPE_1__ tm; TYPE_1__ tlm; } ;
typedef TYPE_2__ pdf_text_object_state ;



void
pdf_tos_set_matrix(pdf_text_object_state *tos, float a, float b, float c, float d, float e, float f)
{
 tos->tm.a = a;
 tos->tm.b = b;
 tos->tm.c = c;
 tos->tm.d = d;
 tos->tm.e = e;
 tos->tm.f = f;
 tos->tlm = tos->tm;
}
