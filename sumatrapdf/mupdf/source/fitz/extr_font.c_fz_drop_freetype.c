
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ftlib_refs; int * ftlib; } ;
typedef TYPE_1__ fz_font_context ;
struct TYPE_8__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;


 int FT_Done_Library (int *) ;
 int FZ_LOCK_FREETYPE ;
 int ft_error_string (int) ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;
 int fz_warn (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void
fz_drop_freetype(fz_context *ctx)
{
 int fterr;
 fz_font_context *fct = ctx->font;

 fz_lock(ctx, FZ_LOCK_FREETYPE);
 if (--fct->ftlib_refs == 0)
 {
  fterr = FT_Done_Library(fct->ftlib);
  if (fterr)
   fz_warn(ctx, "FT_Done_Library(): %s", ft_error_string(fterr));
  fct->ftlib = ((void*)0);
 }
 fz_unlock(ctx, FZ_LOCK_FREETYPE);
}
