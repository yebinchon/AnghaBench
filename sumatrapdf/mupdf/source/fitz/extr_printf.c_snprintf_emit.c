
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_buffer {size_t n; size_t s; int* p; } ;
typedef int fz_context ;



__attribute__((used)) static void snprintf_emit(fz_context *ctx, void *out_, int c)
{
 struct snprintf_buffer *out = out_;
 if (out->n < out->s)
  out->p[out->n] = c;
 ++(out->n);
}
