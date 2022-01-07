
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ base_size; int scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_context ;


 int fz_free (int *,int ) ;

void pdf_lexbuf_fin(fz_context *ctx, pdf_lexbuf *lb)
{
 if (lb && lb->size != lb->base_size)
  fz_free(ctx, lb->scratch);
}
