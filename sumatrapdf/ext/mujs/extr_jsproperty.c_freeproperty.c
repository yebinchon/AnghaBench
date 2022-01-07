
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Property ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ js_Object ;


 int js_free (int *,int *) ;

__attribute__((used)) static void freeproperty(js_State *J, js_Object *obj, js_Property *node)
{
 js_free(J, node);
 --obj->count;
}
