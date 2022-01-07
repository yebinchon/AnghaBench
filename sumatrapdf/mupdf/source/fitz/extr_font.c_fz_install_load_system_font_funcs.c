
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_load_system_font_fn ;
typedef int fz_load_system_fallback_font_fn ;
typedef int fz_load_system_cjk_font_fn ;
struct TYPE_5__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_4__ {int * load_fallback_font; int * load_cjk_font; int * load_font; } ;



void fz_install_load_system_font_funcs(fz_context *ctx,
  fz_load_system_font_fn *f,
  fz_load_system_cjk_font_fn *f_cjk,
  fz_load_system_fallback_font_fn *f_back)
{
 ctx->font->load_font = f;
 ctx->font->load_cjk_font = f_cjk;
 ctx->font->load_fallback_font = f_back;
}
