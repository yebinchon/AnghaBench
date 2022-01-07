
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {TYPE_5__* function; } ;
struct TYPE_13__ {TYPE_2__ c; TYPE_1__ f; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ js_Object ;
struct TYPE_15__ {char* name; int numparams; char** vartab; } ;
typedef TYPE_5__ js_Function ;
struct TYPE_16__ {int s; } ;
typedef TYPE_6__ js_Buffer ;


 scalar_t__ JS_CCFUNCTION ;
 scalar_t__ JS_CFUNCTION ;
 scalar_t__ JS_CSCRIPT ;
 int js_endtry (int *) ;
 int js_free (int *,TYPE_6__*) ;
 int js_iscallable (int *,int ) ;
 int js_pushliteral (int *,char*) ;
 int js_pushstring (int *,int ) ;
 int js_putc (int *,TYPE_6__**,char) ;
 int js_puts (int *,TYPE_6__**,char*) ;
 int js_throw (int *) ;
 TYPE_4__* js_toobject (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Fp_toString(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 js_Buffer *sb = ((void*)0);
 int i;

 if (!js_iscallable(J, 0))
  js_typeerror(J, "not a function");

 if (self->type == JS_CFUNCTION || self->type == JS_CSCRIPT) {
  js_Function *F = self->u.f.function;

  if (js_try(J)) {
   js_free(J, sb);
   js_throw(J);
  }

  js_puts(J, &sb, "function ");
  js_puts(J, &sb, F->name);
  js_putc(J, &sb, '(');
  for (i = 0; i < F->numparams; ++i) {
   if (i > 0) js_putc(J, &sb, ',');
   js_puts(J, &sb, F->vartab[i]);
  }
  js_puts(J, &sb, ") { [byte code] }");
  js_putc(J, &sb, 0);

  js_pushstring(J, sb->s);
  js_endtry(J);
  js_free(J, sb);
 } else if (self->type == JS_CCFUNCTION) {
  if (js_try(J)) {
   js_free(J, sb);
   js_throw(J);
  }

  js_puts(J, &sb, "function ");
  js_puts(J, &sb, self->u.c.name);
  js_puts(J, &sb, "() { [native code] }");
  js_putc(J, &sb, 0);

  js_pushstring(J, sb->s);
  js_endtry(J);
  js_free(J, sb);
 } else {
  js_pushliteral(J, "function () { }");
 }
}
