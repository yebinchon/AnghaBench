
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_strlcpy (char*,char const*,size_t) ;
 int fz_throw (int *,int ,char*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

void
fz_format_output_path(fz_context *ctx, char *path, size_t size, const char *fmt, int page)
{
 const char *s, *p;
 char num[40];
 int i, n;
 int z = 0;

 for (i = 0; page; page /= 10)
  num[i++] = '0' + page % 10;
 num[i] = 0;

 s = p = strchr(fmt, '%');
 if (p)
 {
  ++p;
  while (*p >= '0' && *p <= '9')
   z = z * 10 + (*p++ - '0');
 }
 if (p && *p == 'd')
 {
  ++p;
 }
 else
 {
  s = p = strrchr(fmt, '.');
  if (!p)
   s = p = fmt + strlen(fmt);
 }

 if (z < 1)
  z = 1;
 while (i < z && i < (int)sizeof num)
  num[i++] = '0';
 n = s - fmt;
 if (n + i + strlen(p) >= size)
  fz_throw(ctx, FZ_ERROR_GENERIC, "path name buffer overflow");
 memcpy(path, fmt, n);
 while (i > 0)
  path[n++] = num[--i];
 fz_strlcpy(path + n, p, size - n);
}
