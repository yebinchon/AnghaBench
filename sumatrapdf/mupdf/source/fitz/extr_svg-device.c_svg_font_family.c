
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_strlcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
svg_font_family(fz_context *ctx, char buf[], int size, const char *name)
{

 char *p = strchr(name, '+');
 if (p) fz_strlcpy(buf, p+1, size);
 else fz_strlcpy(buf, name, size);
 p = strrchr(buf, '-');
 if (p) *p = 0;
}
