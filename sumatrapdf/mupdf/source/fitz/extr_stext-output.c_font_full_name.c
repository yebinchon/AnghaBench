
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;


 char* fz_font_name (int *,int *) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *
font_full_name(fz_context *ctx, fz_font *font)
{
 const char *name = fz_font_name(ctx, font);
 const char *s = strchr(name, '+');
 return s ? s + 1 : name;
}
