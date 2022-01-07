
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 char* compat_strdup (char const*) ;
 size_t* cp1252_utf8 ;
 int free (size_t*) ;
 scalar_t__ is_utf8 (char const*) ;
 size_t* malloc (size_t) ;
 char* realloc (size_t*,size_t) ;
 int strlen (char const*) ;
 size_t* tblofs ;

char *
icy2utf8(const char *src, int force)
{
 const uint8_t *s = (const uint8_t *)src;
 size_t srclen, dstlen, i, k;
 uint8_t ch, *d;
 char *dst;



 if(!force && is_utf8(src)) return (compat_strdup(src));

 srclen = strlen(src) + 1;

 if ((d = malloc(srclen * 3)) == ((void*)0))
  return (((void*)0));

 i = 0;
 dstlen = 0;
 while (i < srclen) {
  ch = s[i++];
  k = tblofs[ch];
  while (k < tblofs[ch + 1])
   d[dstlen++] = cp1252_utf8[k++];
 }


 if ((dst = realloc(d, dstlen)) == ((void*)0)) {
  free(d);
  return (((void*)0));
 }
 return (dst);
}
