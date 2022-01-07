
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_12__ {int flags; int prog; scalar_t__ last; } ;
typedef TYPE_2__ js_Regexp ;
struct TYPE_13__ {char* s; } ;
typedef TYPE_3__ js_Buffer ;
struct TYPE_14__ {int nsub; TYPE_1__* sub; } ;
struct TYPE_11__ {char* sp; char const* ep; } ;
typedef TYPE_4__ Resub ;


 int JS_REGEXP_G ;
 int REG_NOTBOL ;
 char* checkstring (int *,int ) ;
 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 scalar_t__ js_doregexec (int *,int ,char const*,TYPE_4__*,int ) ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_3__*) ;
 scalar_t__ js_iscallable (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushlstring (int *,char const*,char const*) ;
 int js_pushnumber (int *,int) ;
 int js_pushstring (int *,char*) ;
 int js_pushundefined (int *) ;
 int js_putc (int *,TYPE_3__**,char const) ;
 int js_putm (int *,TYPE_3__**,char const*,char const*) ;
 int js_puts (int *,TYPE_3__**,char const*) ;
 int js_throw (int *) ;
 TYPE_2__* js_toregexp (int *,int) ;
 char* js_tostring (int *,int) ;
 scalar_t__ js_try (int *) ;

__attribute__((used)) static void Sp_replace_regexp(js_State *J)
{
 js_Regexp *re;
 const char *source, *s, *r;
 js_Buffer *sb = ((void*)0);
 int n, x;
 Resub m;

 source = checkstring(J, 0);
 re = js_toregexp(J, 1);

 if (js_doregexec(J, re->prog, source, &m, 0)) {
  js_copy(J, 0);
  return;
 }

 re->last = 0;

loop:
 s = m.sub[0].sp;
 n = m.sub[0].ep - m.sub[0].sp;

 if (js_iscallable(J, 2)) {
  js_copy(J, 2);
  js_pushundefined(J);
  for (x = 0; m.sub[x].sp; ++x)
   js_pushlstring(J, m.sub[x].sp, m.sub[x].ep - m.sub[x].sp);
  js_pushnumber(J, s - source);
  js_copy(J, 0);
  js_call(J, 2 + x);
  r = js_tostring(J, -1);
  js_putm(J, &sb, source, s);
  js_puts(J, &sb, r);
  js_pop(J, 1);
 } else {
  r = js_tostring(J, 2);
  js_putm(J, &sb, source, s);
  while (*r) {
   if (*r == '$') {
    switch (*(++r)) {
    case 0: --r;

    case '$': js_putc(J, &sb, '$'); break;
    case '`': js_putm(J, &sb, source, s); break;
    case '\'': js_puts(J, &sb, s + n); break;
    case '&':
     js_putm(J, &sb, s, s + n);
     break;
    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
     x = *r - '0';
     if (r[1] >= '0' && r[1] <= '9')
      x = x * 10 + *(++r) - '0';
     if (x > 0 && x < m.nsub) {
      js_putm(J, &sb, m.sub[x].sp, m.sub[x].ep);
     } else {
      js_putc(J, &sb, '$');
      if (x > 10) {
       js_putc(J, &sb, '0' + x / 10);
       js_putc(J, &sb, '0' + x % 10);
      } else {
       js_putc(J, &sb, '0' + x);
      }
     }
     break;
    default:
     js_putc(J, &sb, '$');
     js_putc(J, &sb, *r);
     break;
    }
    ++r;
   } else {
    js_putc(J, &sb, *r++);
   }
  }
 }

 if (re->flags & JS_REGEXP_G) {
  source = m.sub[0].ep;
  if (n == 0) {
   if (*source)
    js_putc(J, &sb, *source++);
   else
    goto end;
  }
  if (!js_doregexec(J, re->prog, source, &m, REG_NOTBOL))
   goto loop;
 }

end:
 js_puts(J, &sb, s + n);
 js_putc(J, &sb, 0);

 if (js_try(J)) {
  js_free(J, sb);
  js_throw(J);
 }
 js_pushstring(J, sb ? sb->s : "");
 js_endtry(J);
 js_free(J, sb);
}
