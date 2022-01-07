
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {int string; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;


 scalar_t__ JS_CSTRING ;
 int js_pushliteral (int *,int ) ;
 TYPE_3__* js_toobject (int *,int ) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Sp_valueOf(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 if (self->type != JS_CSTRING) js_typeerror(J, "not a string");
 js_pushliteral(J, self->u.s.string);
}
