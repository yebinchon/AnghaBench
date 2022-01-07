
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct utf8_data {scalar_t__ width; char const* data; int size; int have; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int UTF8_DONE ;
 int UTF8_MORE ;
 char* format_skip (char const*,char*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 int utf8_append (struct utf8_data*,char const) ;
 int utf8_open (struct utf8_data*,char const) ;
 char* xmalloc (scalar_t__) ;

char *
format_trim_left(const char *expanded, u_int limit)
{
 char *copy, *out;
 const char *cp = expanded, *end;
 u_int width = 0;
 struct utf8_data ud;
 enum utf8_state more;

 out = copy = xmalloc(strlen(expanded) + 1);
 while (*cp != '\0') {
  if (cp[0] == '#' && cp[1] == '[') {
   end = format_skip(cp + 2, "]");
   if (end == ((void*)0))
    break;
   memcpy(out, cp, end + 1 - cp);
   out += (end + 1 - cp);
   cp = end + 1;
  } else if ((more = utf8_open(&ud, *cp)) == UTF8_MORE) {
   while (*++cp != '\0' && more == UTF8_MORE)
    more = utf8_append(&ud, *cp);
   if (more == UTF8_DONE) {
    if (width + ud.width <= limit) {
     memcpy(out, ud.data, ud.size);
     out += ud.size;
    }
    width += ud.width;
   } else
    cp -= ud.have;
  } else if (*cp > 0x1f && *cp < 0x7f) {
   if (width + 1 <= limit)
    *out++ = *cp;
   width++;
   cp++;
  } else
   cp++;
 }
 *out = '\0';
 return (copy);
}
