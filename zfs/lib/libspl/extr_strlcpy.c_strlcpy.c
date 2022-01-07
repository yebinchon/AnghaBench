
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

size_t
strlcpy(char *dst, const char *src, size_t len)
{
 size_t slen = strlen(src);
 size_t copied;

 if (len == 0)
  return (slen);

 if (slen >= len)
  copied = len - 1;
 else
  copied = slen;
 (void) memcpy(dst, src, copied);
 dst[copied] = '\0';
 return (slen);
}
