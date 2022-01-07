
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_6__ {char* s; } ;
typedef TYPE_1__ js_Buffer ;


 char* checkstring (int *,int ) ;
 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_1__*) ;
 scalar_t__ js_iscallable (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushlstring (int *,char const*,int) ;
 int js_pushnumber (int *,int) ;
 int js_pushstring (int *,char*) ;
 int js_pushundefined (int *) ;
 int js_putc (int *,TYPE_1__**,char const) ;
 int js_putm (int *,TYPE_1__**,char const*,char const*) ;
 int js_puts (int *,TYPE_1__**,char const*) ;
 int js_throw (int *) ;
 char* js_tostring (int *,int) ;
 scalar_t__ js_try (int *) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static void Sp_replace_string(js_State *J)
{
 const char *source, *needle, *s, *r;
 js_Buffer *sb = ((void*)0);
 int n;

 source = checkstring(J, 0);
 needle = js_tostring(J, 1);

 s = strstr(source, needle);
 if (!s) {
  js_copy(J, 0);
  return;
 }
 n = strlen(needle);

 if (js_iscallable(J, 2)) {
  js_copy(J, 2);
  js_pushundefined(J);
  js_pushlstring(J, s, n);
  js_pushnumber(J, s - source);
  js_copy(J, 0);
  js_call(J, 3);
  r = js_tostring(J, -1);
  js_putm(J, &sb, source, s);
  js_puts(J, &sb, r);
  js_puts(J, &sb, s + n);
  js_putc(J, &sb, 0);
  js_pop(J, 1);
 } else {
  r = js_tostring(J, 2);
  js_putm(J, &sb, source, s);
  while (*r) {
   if (*r == '$') {
    switch (*(++r)) {
    case 0: --r;

    case '$': js_putc(J, &sb, '$'); break;
    case '&': js_putm(J, &sb, s, s + n); break;
    case '`': js_putm(J, &sb, source, s); break;
    case '\'': js_puts(J, &sb, s + n); break;
    default: js_putc(J, &sb, '$'); js_putc(J, &sb, *r); break;
    }
    ++r;
   } else {
    js_putc(J, &sb, *r++);
   }
  }
  js_puts(J, &sb, s + n);
  js_putc(J, &sb, 0);
 }

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }
 js_pushstring(J, sb ? sb->s : "");
 js_endtry(J);
 js_free(J, sb);
}
