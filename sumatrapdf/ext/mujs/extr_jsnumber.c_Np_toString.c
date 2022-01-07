
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int js_State ;
struct TYPE_7__ {double number; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ js_Object ;
struct TYPE_9__ {char* s; } ;
typedef TYPE_3__ js_Buffer ;


 scalar_t__ JS_CNUMBER ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 char* jsV_numbertostring (int *,char*,double) ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_3__*) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_pushstring (int *,char*) ;
 int js_putc (int *,TYPE_3__**,char) ;
 int js_rangeerror (int *,char*) ;
 int js_throw (int *) ;
 int js_tointeger (int *,int) ;
 TYPE_2__* js_toobject (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int js_typeerror (int *,char*) ;
 double pow (int,int) ;

__attribute__((used)) static void Np_toString(js_State *J)
{
 char buf[100];
 js_Object *self = js_toobject(J, 0);
 int radix = js_isundefined(J, 1) ? 10 : js_tointeger(J, 1);
 if (self->type != JS_CNUMBER)
  js_typeerror(J, "not a number");
 if (radix == 10) {
  js_pushstring(J, jsV_numbertostring(J, buf, self->u.number));
  return;
 }
 if (radix < 2 || radix > 36)
  js_rangeerror(J, "invalid radix");


 {
  static const char digits[] = "0123456789abcdefghijklmnopqrstuvwxyz";
  double number = self->u.number;
  int sign = self->u.number < 0;
  js_Buffer *sb = ((void*)0);
  uint64_t u, limit = ((uint64_t)1<<52);

  int ndigits, exp, point;

  if (number == 0) { js_pushstring(J, "0"); return; }
  if (isnan(number)) { js_pushstring(J, "NaN"); return; }
  if (isinf(number)) { js_pushstring(J, sign ? "-Infinity" : "Infinity"); return; }

  if (sign)
   number = -number;


  exp = 0;
  while (number * pow(radix, exp) > limit)
   --exp;
  while (number * pow(radix, exp+1) < limit)
   ++exp;
  u = number * pow(radix, exp) + 0.5;


  while (u > 0 && (u % radix) == 0) {
   u /= radix;
   --exp;
  }


  ndigits = 0;
  while (u > 0) {
   buf[ndigits++] = digits[u % radix];
   u /= radix;
  }
  point = ndigits - exp;

  if (js_try(J)) {
   js_free(J, sb);
   js_throw(J);
  }

  if (sign)
   js_putc(J, &sb, '-');

  if (point <= 0) {
   js_putc(J, &sb, '0');
   js_putc(J, &sb, '.');
   while (point++ < 0)
    js_putc(J, &sb, '0');
   while (ndigits-- > 0)
    js_putc(J, &sb, buf[ndigits]);
  } else {
   while (ndigits-- > 0) {
    js_putc(J, &sb, buf[ndigits]);
    if (--point == 0 && ndigits > 0)
     js_putc(J, &sb, '.');
   }
   while (point-- > 0)
    js_putc(J, &sb, '0');
  }

  js_putc(J, &sb, 0);
  js_pushstring(J, sb->s);

  js_endtry(J);
  js_free(J, sb);
 }
}
