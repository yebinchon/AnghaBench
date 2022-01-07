
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_9__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_10__ {int * sans; int * serif; } ;
struct TYPE_8__ {TYPE_3__* fallback; } ;




 int FZ_LANG_ur ;
 int FZ_LANG_urd ;


 int UCDN_LAST_SCRIPT ;
 int UCDN_SCRIPT_ARABIC ;
 int UCDN_SCRIPT_HAN ;
 int * fz_load_system_fallback_font (TYPE_2__*,int,int,int,int,int) ;
 unsigned char* fz_lookup_noto_font (TYPE_2__*,int,int,int*,int*) ;
 int * fz_new_font_from_memory (TYPE_2__*,int *,unsigned char const*,int,int,int ) ;
 scalar_t__ nelem (TYPE_3__*) ;

fz_font *fz_load_fallback_font(fz_context *ctx, int script, int language, int serif, int bold, int italic)
{
 fz_font **fontp;
 const unsigned char *data;
 int index;
 int subfont;
 int size;

 if (script < 0 || script >= (int)nelem(ctx->font->fallback))
  return ((void*)0);



 index = script;
 if (script == UCDN_SCRIPT_HAN)
 {
  switch (language)
  {
  case 131: index = UCDN_LAST_SCRIPT + 1; break;
  case 130: index = UCDN_LAST_SCRIPT + 2; break;
  case 129: index = UCDN_LAST_SCRIPT + 3; break;
  case 128: index = UCDN_LAST_SCRIPT + 4; break;
  }
 }
 if (script == UCDN_SCRIPT_ARABIC)
 {
  if (language == FZ_LANG_ur || language == FZ_LANG_urd)
   index = UCDN_LAST_SCRIPT + 5;
 }

 if (serif)
  fontp = &ctx->font->fallback[index].serif;
 else
  fontp = &ctx->font->fallback[index].sans;

 if (!*fontp)
 {
  *fontp = fz_load_system_fallback_font(ctx, script, language, serif, bold, italic);
  if (!*fontp)
  {
   data = fz_lookup_noto_font(ctx, script, language, &size, &subfont);
   if (data)
    *fontp = fz_new_font_from_memory(ctx, ((void*)0), data, size, subfont, 0);
  }
 }

 return *fontp;
}
