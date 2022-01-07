
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_9__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_8__ {int * cjk; } ;


 int FZ_ERROR_GENERIC ;
 int * fz_keep_font (TYPE_2__*,int ) ;
 unsigned char* fz_lookup_cjk_font (TYPE_2__*,int,int*,int*) ;
 int fz_new_font_from_memory (TYPE_2__*,int *,unsigned char const*,int,int,int ) ;
 int fz_throw (TYPE_2__*,int ,char*) ;
 scalar_t__ nelem (int *) ;

fz_font *
fz_new_cjk_font(fz_context *ctx, int ordering)
{
 const unsigned char *data;
 int size, index;
 if (ordering >= 0 && ordering < (int)nelem(ctx->font->cjk))
 {
  if (ctx->font->cjk[ordering])
   return fz_keep_font(ctx, ctx->font->cjk[ordering]);
  data = fz_lookup_cjk_font(ctx, ordering, &size, &index);
  if (data)
  {
   ctx->font->cjk[ordering] = fz_new_font_from_memory(ctx, ((void*)0), data, size, index, 0);
   return fz_keep_font(ctx, ctx->font->cjk[ordering]);
  }
 }
 fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find builtin CJK font");
}
