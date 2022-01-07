
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {double number; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ js_Object ;


 scalar_t__ JS_CNUMBER ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int jsV_numbertostring (int *,char*,double) ;
 int js_pushstring (int *,int ) ;
 int js_rangeerror (int *,char*,int) ;
 int js_tointeger (int *,int) ;
 TYPE_2__* js_toobject (int *,int ) ;
 int js_typeerror (int *,char*) ;
 int numtostr (int *,char*,int,double) ;

__attribute__((used)) static void Np_toFixed(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 int width = js_tointeger(J, 1);
 char buf[32];
 double x;
 if (self->type != JS_CNUMBER) js_typeerror(J, "not a number");
 if (width < 0) js_rangeerror(J, "precision %d out of range", width);
 if (width > 20) js_rangeerror(J, "precision %d out of range", width);
 x = self->u.number;
 if (isnan(x) || isinf(x) || x <= -1e21 || x >= 1e21)
  js_pushstring(J, jsV_numbertostring(J, buf, x));
 else
  numtostr(J, "%.*f", width, x);
}
