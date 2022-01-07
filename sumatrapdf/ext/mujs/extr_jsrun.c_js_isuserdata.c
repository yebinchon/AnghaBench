
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* object; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_4__ u; } ;
typedef TYPE_5__ js_Value ;
typedef int js_State ;
struct TYPE_7__ {int tag; } ;
struct TYPE_8__ {TYPE_1__ user; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ JS_CUSERDATA ;
 scalar_t__ JS_TOBJECT ;
 TYPE_5__* stackidx (int *,int) ;
 int strcmp (char const*,int ) ;

int js_isuserdata(js_State *J, int idx, const char *tag)
{
 js_Value *v = stackidx(J, idx);
 if (v->type == JS_TOBJECT && v->u.object->type == JS_CUSERDATA)
  return !strcmp(tag, v->u.object->u.user.tag);
 return 0;
}
