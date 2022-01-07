
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_string (int *,int *,char*) ;

__attribute__((used)) static void maybe_stroke_and_fill(fz_context *ctx, fz_buffer *buf, int sc, int ic)
{
 if (sc)
  fz_append_string(ctx, buf, ic ? "b\n" : "s\n");
 else
  fz_append_string(ctx, buf, ic ? "f\n" : "n\n");
}
