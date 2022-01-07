
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {char* shrstr; int memstr; } ;
struct TYPE_4__ {TYPE_1__ u; int type; } ;


 int CHECKSTACK (int) ;
 int JS_TMEMSTR ;
 int JS_TSHRSTR ;
 TYPE_2__* STACK ;
 size_t TOP ;
 int jsV_newmemstring (int *,char const*,int) ;
 int js_Value ;
 int soffsetof (int ,int ) ;
 int strlen (char const*) ;
 int type ;

void js_pushstring(js_State *J, const char *v)
{
 int n = strlen(v);
 CHECKSTACK(1);
 if (n <= soffsetof(js_Value, type)) {
  char *s = STACK[TOP].u.shrstr;
  while (n--) *s++ = *v++;
  *s = 0;
  STACK[TOP].type = JS_TSHRSTR;
 } else {
  STACK[TOP].type = JS_TMEMSTR;
  STACK[TOP].u.memstr = jsV_newmemstring(J, v, n);
 }
 ++TOP;
}
