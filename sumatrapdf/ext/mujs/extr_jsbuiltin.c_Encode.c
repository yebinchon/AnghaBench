
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {char* s; } ;
typedef TYPE_1__ js_Buffer ;


 int js_endtry (int *) ;
 int js_free (int *,TYPE_1__*) ;
 int js_pushstring (int *,char*) ;
 int js_putc (int *,TYPE_1__**,char const) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;
 scalar_t__ strchr (char const*,int) ;

__attribute__((used)) static void Encode(js_State *J, const char *str, const char *unescaped)
{
 js_Buffer *sb = ((void*)0);

 static const char *HEX = "0123456789ABCDEF";

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }

 while (*str) {
  int c = (unsigned char) *str++;
  if (strchr(unescaped, c))
   js_putc(J, &sb, c);
  else {
   js_putc(J, &sb, '%');
   js_putc(J, &sb, HEX[(c >> 4) & 0xf]);
   js_putc(J, &sb, HEX[c & 0xf]);
  }
 }
 js_putc(J, &sb, 0);

 js_pushstring(J, sb ? sb->s : "");
 js_endtry(J);
 js_free(J, sb);
}
