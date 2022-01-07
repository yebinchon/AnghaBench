
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {int number; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ js_Object ;


 scalar_t__ JS_CDATE ;
 int TimeClip (double) ;
 int js_pushnumber (int *,int ) ;
 TYPE_2__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void js_setdate(js_State *J, int idx, double t)
{
 js_Object *self = js_toobject(J, idx);
 if (self->type != JS_CDATE)
  js_typeerror(J, "not a date");
 self->u.number = TimeClip(t);
 js_pushnumber(J, self->u.number);
}
