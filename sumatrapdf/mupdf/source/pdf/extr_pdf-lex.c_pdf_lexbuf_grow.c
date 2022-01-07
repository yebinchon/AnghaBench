
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* ptrdiff_t ;
struct TYPE_3__ {char* scratch; int size; int base_size; int buffer; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_context ;


 char* fz_malloc (int *,int) ;
 char* fz_realloc (int *,char*,int) ;
 int memcpy (char*,int ,int) ;

ptrdiff_t pdf_lexbuf_grow(fz_context *ctx, pdf_lexbuf *lb)
{
 char *old = lb->scratch;
 int newsize = lb->size * 2;
 if (lb->size == lb->base_size)
 {
  lb->scratch = fz_malloc(ctx, newsize);
  memcpy(lb->scratch, lb->buffer, lb->size);
 }
 else
 {
  lb->scratch = fz_realloc(ctx, lb->scratch, newsize);
 }
 lb->size = newsize;
 return lb->scratch - old;
}
