
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_7__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_6__ {int * symbol1; } ;


 unsigned char* fz_lookup_noto_symbol1_font (TYPE_2__*,int*) ;
 int * fz_new_font_from_memory (TYPE_2__*,int *,unsigned char const*,int,int ,int ) ;

__attribute__((used)) static fz_font *fz_load_fallback_symbol1_font(fz_context *ctx)
{
 const unsigned char *data;
 int size;
 if (!ctx->font->symbol1)
 {
  data = fz_lookup_noto_symbol1_font(ctx, &size);
  if (data)
   ctx->font->symbol1 = fz_new_font_from_memory(ctx, ((void*)0), data, size, 0, 0);
 }
 return ctx->font->symbol1;
}
