
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Object ;
struct TYPE_7__ {int n; } ;
typedef TYPE_1__ js_Buffer ;


 int fmtindent (int *,TYPE_1__**,char const*,int) ;
 int fmtstr (int *,TYPE_1__**,char const*) ;
 int fmtvalue (int *,TYPE_1__**,char const*,char const*,int) ;
 int js_gettop (int *) ;
 scalar_t__ js_isobject (int *,int) ;
 char* js_nextiterator (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushiterator (int *,int,int) ;
 int js_putc (int *,TYPE_1__**,char) ;
 int js_rot2 (int *) ;
 scalar_t__ js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void fmtobject(js_State *J, js_Buffer **sb, js_Object *obj, const char *gap, int level)
{
 const char *key;
 int save;
 int i, n;

 n = js_gettop(J) - 1;
 for (i = 4; i < n; ++i)
  if (js_isobject(J, i))
   if (js_toobject(J, i) == js_toobject(J, -1))
    js_typeerror(J, "cyclic object value");

 n = 0;
 js_putc(J, sb, '{');
 js_pushiterator(J, -1, 1);
 while ((key = js_nextiterator(J, -1))) {
  save = (*sb)->n;
  if (n) js_putc(J, sb, ',');
  if (gap) fmtindent(J, sb, gap, level + 1);
  fmtstr(J, sb, key);
  js_putc(J, sb, ':');
  if (gap)
   js_putc(J, sb, ' ');
  js_rot2(J);
  if (!fmtvalue(J, sb, key, gap, level + 1))
   (*sb)->n = save;
  else
   ++n;
  js_rot2(J);
 }
 js_pop(J, 1);
 if (gap && n) fmtindent(J, sb, gap, level);
 js_putc(J, sb, '}');
}
