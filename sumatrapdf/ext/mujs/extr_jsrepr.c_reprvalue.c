
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_13__ {char* tag; } ;
struct TYPE_12__ {char* source; int flags; } ;
struct TYPE_11__ {char* string; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {int function; } ;
struct TYPE_14__ {TYPE_5__ user; int number; TYPE_4__ r; TYPE_3__ s; int boolean; TYPE_2__ c; TYPE_1__ f; } ;
struct TYPE_15__ {int type; TYPE_6__ u; } ;
typedef TYPE_7__ js_Object ;
typedef int js_Buffer ;
 int JS_REGEXP_G ;
 int JS_REGEXP_I ;
 int JS_REGEXP_M ;
 int fmtnum (int *,int **,int ) ;
 int js_getproperty (int *,int,char*) ;
 scalar_t__ js_isboolean (int *,int) ;
 scalar_t__ js_isnull (int *,int) ;
 scalar_t__ js_isnumber (int *,int) ;
 scalar_t__ js_isobject (int *,int) ;
 scalar_t__ js_isstring (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_pop (int *,int) ;
 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char*) ;
 scalar_t__ js_toboolean (int *,int) ;
 int js_tonumber (int *,int) ;
 TYPE_7__* js_toobject (int *,int) ;
 char* js_tostring (int *,int) ;
 int reprarray (int *,int **) ;
 int reprfun (int *,int **,int ) ;
 int reprnum (int *,int **,int ) ;
 int reprobject (int *,int **) ;
 int reprstr (int *,int **,char*) ;

__attribute__((used)) static void reprvalue(js_State *J, js_Buffer **sb)
{
 if (js_isundefined(J, -1))
  js_puts(J, sb, "undefined");
 else if (js_isnull(J, -1))
  js_puts(J, sb, "null");
 else if (js_isboolean(J, -1))
  js_puts(J, sb, js_toboolean(J, -1) ? "true" : "false");
 else if (js_isnumber(J, -1))
  reprnum(J, sb, js_tonumber(J, -1));
 else if (js_isstring(J, -1))
  reprstr(J, sb, js_tostring(J, -1));
 else if (js_isobject(J, -1)) {
  js_Object *obj = js_toobject(J, -1);
  switch (obj->type) {
  default:
   reprobject(J, sb);
   break;
  case 141:
   reprarray(J, sb);
   break;
  case 136:
  case 130:
   reprfun(J, sb, obj->u.f.function);
   break;
  case 139:
   js_puts(J, sb, "function ");
   js_puts(J, sb, obj->u.c.name);
   js_puts(J, sb, "() { [native code] }");
   break;
  case 140:
   js_puts(J, sb, "(new Boolean(");
   js_puts(J, sb, obj->u.boolean ? "true" : "false");
   js_puts(J, sb, "))");
   break;
  case 132:
   js_puts(J, sb, "(new Number(");
   reprnum(J, sb, obj->u.number);
   js_puts(J, sb, "))");
   break;
  case 129:
   js_puts(J, sb, "(new String(");
   reprstr(J, sb, obj->u.s.string);
   js_puts(J, sb, "))");
   break;
  case 131:
   js_putc(J, sb, '/');
   js_puts(J, sb, obj->u.r.source);
   js_putc(J, sb, '/');
   if (obj->u.r.flags & JS_REGEXP_G) js_putc(J, sb, 'g');
   if (obj->u.r.flags & JS_REGEXP_I) js_putc(J, sb, 'i');
   if (obj->u.r.flags & JS_REGEXP_M) js_putc(J, sb, 'm');
   break;
  case 138:
   js_puts(J, sb, "(new Date(");
   fmtnum(J, sb, obj->u.number);
   js_puts(J, sb, "))");
   break;
  case 137:
   js_puts(J, sb, "(new ");
   js_getproperty(J, -1, "name");
   js_puts(J, sb, js_tostring(J, -1));
   js_pop(J, 1);
   js_putc(J, sb, '(');
   js_getproperty(J, -1, "message");
   reprstr(J, sb, js_tostring(J, -1));
   js_pop(J, 1);
   js_puts(J, sb, "))");
   break;
  case 133:
   js_puts(J, sb, "Math");
   break;
  case 134:
   js_puts(J, sb, "JSON");
   break;
  case 135:
   js_puts(J, sb, "[iterator ");
   break;
  case 128:
   js_puts(J, sb, "[userdata ");
   js_puts(J, sb, obj->u.user.tag);
   js_putc(J, sb, ']');
   break;
  }
 }
}
