
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;


 char* font_full_name (int *,int *) ;
 int fz_strlcat (char*,char*,int) ;
 int fz_strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
font_family_name(fz_context *ctx, fz_font *font, char *buf, int size, int is_mono, int is_serif)
{
 const char *name = font_full_name(ctx, font);
 char *s;
 fz_strlcpy(buf, name, size);
 s = strrchr(buf, '-');
 if (s)
  *s = 0;
 if (is_mono)
  fz_strlcat(buf, ",monospace", size);
 else
  fz_strlcat(buf, is_serif ? ",serif" : ",sans-serif", size);
}
