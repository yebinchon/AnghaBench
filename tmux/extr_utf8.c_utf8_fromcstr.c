
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {scalar_t__ size; int have; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int UTF8_DONE ;
 int UTF8_MORE ;
 int utf8_append (struct utf8_data*,char const) ;
 int utf8_open (struct utf8_data*,char const) ;
 int utf8_set (struct utf8_data*,char const) ;
 struct utf8_data* xreallocarray (struct utf8_data*,size_t,int) ;

struct utf8_data *
utf8_fromcstr(const char *src)
{
 struct utf8_data *dst;
 size_t n;
 enum utf8_state more;

 dst = ((void*)0);

 n = 0;
 while (*src != '\0') {
  dst = xreallocarray(dst, n + 1, sizeof *dst);
  if ((more = utf8_open(&dst[n], *src)) == UTF8_MORE) {
   while (*++src != '\0' && more == UTF8_MORE)
    more = utf8_append(&dst[n], *src);
   if (more == UTF8_DONE) {
    n++;
    continue;
   }
   src -= dst[n].have;
  }
  utf8_set(&dst[n], *src);
  n++;
  src++;
 }

 dst = xreallocarray(dst, n + 1, sizeof *dst);
 dst[n].size = 0;
 return (dst);
}
