
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 int utf8_strvis (char*,char const*,scalar_t__,int) ;
 char* xrealloc (char*,int) ;
 char* xreallocarray (int *,int,scalar_t__) ;

int
utf8_stravis(char **dst, const char *src, int flag)
{
 char *buf;
 int len;

 buf = xreallocarray(((void*)0), 4, strlen(src) + 1);
 len = utf8_strvis(buf, src, strlen(src), flag);

 *dst = xrealloc(buf, len + 1);
 return (len);
}
