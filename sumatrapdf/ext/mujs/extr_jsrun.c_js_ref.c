
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ object; int boolean; } ;
struct TYPE_10__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ js_Value ;
struct TYPE_11__ {int nextref; } ;
typedef TYPE_3__ js_State ;






 char* js_intern (TYPE_3__*,char*) ;
 int js_setregistry (TYPE_3__*,char const*) ;
 int sprintf (char*,char*,void*) ;
 TYPE_2__* stackidx (TYPE_3__*,int) ;

const char *js_ref(js_State *J)
{
 js_Value *v = stackidx(J, -1);
 const char *s;
 char buf[32];
 switch (v->type) {
 case 128: s = "_Undefined"; break;
 case 130: s = "_Null"; break;
 case 131:
  s = v->u.boolean ? "_True" : "_False";
  break;
 case 129:
  sprintf(buf, "%p", (void*)v->u.object);
  s = js_intern(J, buf);
  break;
 default:
  sprintf(buf, "%d", J->nextref++);
  s = js_intern(J, buf);
  break;
 }
 js_setregistry(J, s);
 return s;
}
