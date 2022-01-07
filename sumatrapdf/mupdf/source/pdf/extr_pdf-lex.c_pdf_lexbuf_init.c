
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int base_size; int * buffer; int * scratch; scalar_t__ len; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_context ;



void pdf_lexbuf_init(fz_context *ctx, pdf_lexbuf *lb, int size)
{
 lb->size = lb->base_size = size;
 lb->len = 0;
 lb->scratch = &lb->buffer[0];
}
