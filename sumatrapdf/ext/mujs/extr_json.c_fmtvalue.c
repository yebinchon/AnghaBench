
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_6__ {int string; } ;
struct TYPE_7__ {int boolean; TYPE_1__ s; int number; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;
typedef int js_Buffer ;






 int fmtarray (int *,int **,char const*,int) ;
 int fmtnum (int *,int **,int ) ;
 int fmtobject (int *,int **,TYPE_3__*,char const*,int) ;
 int fmtstr (int *,int **,int ) ;
 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_getproperty (int *,int,char const*) ;
 scalar_t__ js_hasproperty (int *,int,char*) ;
 scalar_t__ js_isboolean (int *,int) ;
 scalar_t__ js_iscallable (int *,int) ;
 scalar_t__ js_isnull (int *,int) ;
 scalar_t__ js_isnumber (int *,int) ;
 scalar_t__ js_isobject (int *,int) ;
 scalar_t__ js_isstring (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushstring (int *,char const*) ;
 int js_puts (int *,int **,char*) ;
 int js_rot2pop1 (int *) ;
 scalar_t__ js_toboolean (int *,int) ;
 int js_tonumber (int *,int) ;
 TYPE_3__* js_toobject (int *,int) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static int fmtvalue(js_State *J, js_Buffer **sb, const char *key, const char *gap, int level)
{



 js_getproperty(J, -1, key);

 if (js_isobject(J, -1)) {
  if (js_hasproperty(J, -1, "toJSON")) {
   if (js_iscallable(J, -1)) {
    js_copy(J, -2);
    js_pushstring(J, key);
    js_call(J, 1);
    js_rot2pop1(J);
   } else {
    js_pop(J, 1);
   }
  }
 }

 if (js_iscallable(J, 2)) {
  js_copy(J, 2);
  js_copy(J, -3);
  js_pushstring(J, key);
  js_copy(J, -4);
  js_call(J, 2);
  js_rot2pop1(J);
 }

 if (js_isobject(J, -1) && !js_iscallable(J, -1)) {
  js_Object *obj = js_toobject(J, -1);
  switch (obj->type) {
  case 129: fmtnum(J, sb, obj->u.number); break;
  case 128: fmtstr(J, sb, obj->u.s.string); break;
  case 130: js_puts(J, sb, obj->u.boolean ? "true" : "false"); break;
  case 131: fmtarray(J, sb, gap, level); break;
  default: fmtobject(J, sb, obj, gap, level); break;
  }
 }
 else if (js_isboolean(J, -1))
  js_puts(J, sb, js_toboolean(J, -1) ? "true" : "false");
 else if (js_isnumber(J, -1))
  fmtnum(J, sb, js_tonumber(J, -1));
 else if (js_isstring(J, -1))
  fmtstr(J, sb, js_tostring(J, -1));
 else if (js_isnull(J, -1))
  js_puts(J, sb, "null");
 else {
  js_pop(J, 1);
  return 0;
 }

 js_pop(J, 1);
 return 1;
}
