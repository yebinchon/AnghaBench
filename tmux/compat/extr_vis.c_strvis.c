
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vis (char*,char,int,char const) ;

int
strvis(char *dst, const char *src, int flag)
{
 char c;
 char *start;

 for (start = dst; (c = *src);)
  dst = vis(dst, c, flag, *++src);
 *dst = '\0';
 return (dst - start);
}
