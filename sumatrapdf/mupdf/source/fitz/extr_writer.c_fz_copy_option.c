
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,size_t) ;

int
fz_copy_option(fz_context *ctx, const char *val, char *dest, size_t maxlen)
{
 const char *e = val;
 size_t len, len2;

 if (val == ((void*)0)) {
  if (maxlen)
   *dest = 0;
  return 0;
 }

 while (*e != ',' && *e != 0)
  e++;

 len = e-val;
 len2 = len+1;
 if (len > maxlen)
  len = maxlen;
 memcpy(dest, val, len);
 if (len < maxlen)
  memset(dest+len, 0, maxlen-len);

 return len2 >= maxlen ? len2 - maxlen : 0;
}
