
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 unsigned char* fz_lookup_builtin_font (int *,char const*,int,int,int*) ;
 int * fz_new_font_from_memory (int *,int *,unsigned char const*,int,int ,int ) ;
 int fz_throw (int *,int ,char*,char const*) ;

fz_font *
fz_new_builtin_font(fz_context *ctx, const char *name, int is_bold, int is_italic)
{
 const unsigned char *data;
 int size;
 data = fz_lookup_builtin_font(ctx, name, is_bold, is_italic, &size);
 if (!data)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find builtin font with name '%s'", name);
 return fz_new_font_from_memory(ctx, ((void*)0), data, size, 0, 0);
}
