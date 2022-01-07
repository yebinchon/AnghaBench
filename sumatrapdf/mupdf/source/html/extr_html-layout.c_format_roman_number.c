
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_strlcat (char*,char const*,int) ;
 int fz_strlcpy (char*,char*,int) ;

__attribute__((used)) static void format_roman_number(fz_context *ctx, char *buf, int size, int n, const char *sym[3][10], const char *sym_m)
{
 int I = n % 10;
 int X = (n / 10) % 10;
 int C = (n / 100) % 10;
 int M = (n / 1000);

 fz_strlcpy(buf, "", size);
 while (M--)
  fz_strlcat(buf, sym_m, size);
 fz_strlcat(buf, sym[2][C], size);
 fz_strlcat(buf, sym[1][X], size);
 fz_strlcat(buf, sym[0][I], size);
 fz_strlcat(buf, ". ", size);
}
