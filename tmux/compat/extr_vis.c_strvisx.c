
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vis (char*,char const,int,char const) ;

int
strvisx(char *dst, const char *src, size_t len, int flag)
{
 char c;
 char *start;

 for (start = dst; len > 1; len--) {
  c = *src;
  dst = vis(dst, c, flag, *++src);
 }
 if (len)
  dst = vis(dst, *src, flag, '\0');
 *dst = '\0';
 return (dst - start);
}
