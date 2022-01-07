
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_8__ {scalar_t__ number; } ;
struct TYPE_9__ {TYPE_1__ u; int type; } ;
struct TYPE_10__ {int level; int * setter; int * getter; TYPE_2__ value; scalar_t__ atts; int * right; int * left; int name; } ;
typedef TYPE_3__ js_Property ;
struct TYPE_11__ {int count; } ;
typedef TYPE_4__ js_Object ;


 int JS_TUNDEFINED ;
 int js_intern (int *,char const*) ;
 TYPE_3__* js_malloc (int *,int) ;
 int sentinel ;

__attribute__((used)) static js_Property *newproperty(js_State *J, js_Object *obj, const char *name)
{
 js_Property *node = js_malloc(J, sizeof *node);
 node->name = js_intern(J, name);
 node->left = node->right = &sentinel;
 node->level = 1;
 node->atts = 0;
 node->value.type = JS_TUNDEFINED;
 node->value.u.number = 0;
 node->getter = ((void*)0);
 node->setter = ((void*)0);
 ++obj->count;
 return node;
}
