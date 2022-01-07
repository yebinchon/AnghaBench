
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {char* s; } ;
typedef TYPE_1__ js_Buffer ;


 int fmtvalue (int *,TYPE_1__**,char*,char const*,int ) ;
 int js_copy (int *,int) ;
 int js_defproperty (int *,int,char*,int ) ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_1__*) ;
 scalar_t__ js_isnumber (int *,int) ;
 scalar_t__ js_isstring (int *,int) ;
 int js_newobject (int *) ;
 int js_pushstring (int *,char*) ;
 int js_pushundefined (int *) ;
 int js_putc (int *,TYPE_1__**,int ) ;
 int js_rot2pop1 (int *) ;
 int js_throw (int *) ;
 int js_tointeger (int *,int) ;
 char* js_tostring (int *,int) ;
 scalar_t__ js_try (int *) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,char,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void JSON_stringify(js_State *J)
{
 js_Buffer *sb = ((void*)0);
 char buf[12];
 const char *s, *gap;
 int n;

 gap = ((void*)0);

 if (js_isnumber(J, 3)) {
  n = js_tointeger(J, 3);
  if (n < 0) n = 0;
  if (n > 10) n = 10;
  memset(buf, ' ', n);
  buf[n] = 0;
  if (n > 0) gap = buf;
 } else if (js_isstring(J, 3)) {
  s = js_tostring(J, 3);
  n = strlen(s);
  if (n > 10) n = 10;
  memcpy(buf, s, n);
  buf[n] = 0;
  if (n > 0) gap = buf;
 }

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }

 js_newobject(J);
 js_copy(J, 1);
 js_defproperty(J, -2, "", 0);
 if (!fmtvalue(J, &sb, "", gap, 0)) {
  js_pushundefined(J);
 } else {
  js_putc(J, &sb, 0);
  js_pushstring(J, sb ? sb->s : "");
  js_rot2pop1(J);
 }

 js_endtry(J);
 js_free(J, sb);
}
