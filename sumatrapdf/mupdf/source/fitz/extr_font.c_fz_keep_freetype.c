
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ftlib_refs; scalar_t__ ftlib; int ftmemory; } ;
typedef TYPE_1__ fz_font_context ;
struct TYPE_9__ {TYPE_1__* font; } ;
typedef TYPE_2__ fz_context ;


 int FT_Add_Default_Modules (scalar_t__) ;
 int FT_Done_Library (scalar_t__) ;
 int FT_Library_Version (scalar_t__,int*,int*,int*) ;
 int FT_New_Library (int *,scalar_t__*) ;
 int FZ_ERROR_GENERIC ;
 int FZ_LOCK_FREETYPE ;
 char* ft_error_string (int) ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_throw (TYPE_2__*,int ,char*,...) ;
 int fz_unlock (TYPE_2__*,int ) ;
 int fz_warn (TYPE_2__*,char*,char*) ;

__attribute__((used)) static void
fz_keep_freetype(fz_context *ctx)
{
 int fterr;
 int maj, min, pat;
 fz_font_context *fct = ctx->font;

 fz_lock(ctx, FZ_LOCK_FREETYPE);
 if (fct->ftlib)
 {
  fct->ftlib_refs++;
  fz_unlock(ctx, FZ_LOCK_FREETYPE);
  return;
 }

 fterr = FT_New_Library(&fct->ftmemory, &fct->ftlib);
 if (fterr)
 {
  const char *mess = ft_error_string(fterr);
  fz_unlock(ctx, FZ_LOCK_FREETYPE);
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot init freetype: %s", mess);
 }

 FT_Add_Default_Modules(fct->ftlib);

 FT_Library_Version(fct->ftlib, &maj, &min, &pat);
 if (maj == 2 && min == 1 && pat < 7)
 {
  fterr = FT_Done_Library(fct->ftlib);
  if (fterr)
   fz_warn(ctx, "FT_Done_Library(): %s", ft_error_string(fterr));
  fz_unlock(ctx, FZ_LOCK_FREETYPE);
  fz_throw(ctx, FZ_ERROR_GENERIC, "freetype version too old: %d.%d.%d", maj, min, pat);
 }

 fct->ftlib_refs++;
 fz_unlock(ctx, FZ_LOCK_FREETYPE);
}
