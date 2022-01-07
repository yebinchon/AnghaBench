
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctx ;
typedef int fz_context ;


 int fz_stroke_closepath (int *,int *) ;

__attribute__((used)) static void
stroke_close(fz_context *ctx, void *s_)
{
 sctx *s = (sctx *)s_;

 fz_stroke_closepath(ctx, s);
}
