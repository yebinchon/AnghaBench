
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct sortslot {int * J; TYPE_1__ v; } ;
typedef TYPE_1__ js_Value ;
typedef int js_State ;


 scalar_t__ JS_TUNDEFINED ;
 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 scalar_t__ js_iscallable (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 int js_pushvalue (int *,TYPE_1__ const) ;
 int js_tonumber (int *,int) ;
 char* js_tostring (int *,int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int sortcmp(const void *avoid, const void *bvoid)
{
 const struct sortslot *aslot = avoid, *bslot = bvoid;
 const js_Value *a = &aslot->v, *b = &bslot->v;
 js_State *J = aslot->J;
 const char *sx, *sy;
 int c;

 int unx = (a->type == JS_TUNDEFINED);
 int uny = (b->type == JS_TUNDEFINED);
 if (unx) return !uny;
 if (uny) return -1;

 if (js_iscallable(J, 1)) {
  js_copy(J, 1);
  js_pushundefined(J);
  js_pushvalue(J, *a);
  js_pushvalue(J, *b);
  js_call(J, 2);
  c = js_tonumber(J, -1);
  js_pop(J, 1);
 } else {
  js_pushvalue(J, *a);
  js_pushvalue(J, *b);
  sx = js_tostring(J, -2);
  sy = js_tostring(J, -1);
  c = strcmp(sx, sy);
  js_pop(J, 2);
 }
 return c;
}
