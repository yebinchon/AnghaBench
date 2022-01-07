
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_8__ {int atts; struct TYPE_8__* left; int name; struct TYPE_8__* right; } ;
typedef TYPE_1__ js_Property ;
typedef int js_Object ;
struct TYPE_9__ {struct TYPE_9__* next; int name; } ;
typedef TYPE_2__ js_Iterator ;


 int JS_DONTENUM ;
 int jsV_getenumproperty (int *,int *,int ) ;
 TYPE_2__* js_malloc (int *,int) ;
 TYPE_1__ sentinel ;

__attribute__((used)) static js_Iterator *itwalk(js_State *J, js_Iterator *iter, js_Property *prop, js_Object *seen)
{
 if (prop->right != &sentinel)
  iter = itwalk(J, iter, prop->right, seen);
 if (!(prop->atts & JS_DONTENUM)) {
  if (!seen || !jsV_getenumproperty(J, seen, prop->name)) {
   js_Iterator *head = js_malloc(J, sizeof *head);
   head->name = prop->name;
   head->next = iter;
   iter = head;
  }
 }
 if (prop->left != &sentinel)
  iter = itwalk(J, iter, prop->left, seen);
 return iter;
}
