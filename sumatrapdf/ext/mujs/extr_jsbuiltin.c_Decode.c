
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {char* s; } ;
typedef TYPE_1__ js_Buffer ;


 int jsY_ishex (int) ;
 int jsY_tohex (int) ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_1__*) ;
 int js_pushstring (int *,char*) ;
 int js_putc (int *,TYPE_1__**,int) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;
 int js_urierror (int *,char*) ;
 int strchr (char const*,int) ;

__attribute__((used)) static void Decode(js_State *J, const char *str, const char *reserved)
{
 js_Buffer *sb = ((void*)0);
 int a, b;

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }

 while (*str) {
  int c = (unsigned char) *str++;
  if (c != '%')
   js_putc(J, &sb, c);
  else {
   if (!str[0] || !str[1])
    js_urierror(J, "truncated escape sequence");
   a = *str++;
   b = *str++;
   if (!jsY_ishex(a) || !jsY_ishex(b))
    js_urierror(J, "invalid escape sequence");
   c = jsY_tohex(a) << 4 | jsY_tohex(b);
   if (!strchr(reserved, c))
    js_putc(J, &sb, c);
   else {
    js_putc(J, &sb, '%');
    js_putc(J, &sb, a);
    js_putc(J, &sb, b);
   }
  }
 }
 js_putc(J, &sb, 0);

 js_pushstring(J, sb ? sb->s : "");
 js_endtry(J);
 js_free(J, sb);
}
