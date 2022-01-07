
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {char* tag; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;
 int js_concat (int *) ;
 scalar_t__ js_isnull (int *,int ) ;
 scalar_t__ js_isundefined (int *,int ) ;
 int js_pushliteral (int *,char*) ;
 TYPE_3__* js_toobject (int *,int ) ;

__attribute__((used)) static void Op_toString(js_State *J)
{
 if (js_isundefined(J, 0))
  js_pushliteral(J, "[object Undefined]");
 else if (js_isnull(J, 0))
  js_pushliteral(J, "[object Null]");
 else {
  js_Object *self = js_toobject(J, 0);
  switch (self->type) {
  case 132: js_pushliteral(J, "[object Object]"); break;
  case 142: js_pushliteral(J, "[object Array]"); break;
  case 137: js_pushliteral(J, "[object Function]"); break;
  case 130: js_pushliteral(J, "[object Function]"); break;
  case 140: js_pushliteral(J, "[object Function]"); break;
  case 138: js_pushliteral(J, "[object Error]"); break;
  case 141: js_pushliteral(J, "[object Boolean]"); break;
  case 133: js_pushliteral(J, "[object Number]"); break;
  case 129: js_pushliteral(J, "[object String]"); break;
  case 131: js_pushliteral(J, "[object RegExp]"); break;
  case 139: js_pushliteral(J, "[object Date]"); break;
  case 134: js_pushliteral(J, "[object Math]"); break;
  case 135: js_pushliteral(J, "[object JSON]"); break;
  case 143: js_pushliteral(J, "[object Arguments]"); break;
  case 136: js_pushliteral(J, "[Iterator]"); break;
  case 128:
   js_pushliteral(J, "[object ");
   js_pushliteral(J, self->u.user.tag);
   js_concat(J);
   js_pushliteral(J, "]");
   js_concat(J);
   break;
  }
 }
}
