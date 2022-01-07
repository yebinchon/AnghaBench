
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {char* name; int numparams; char** vartab; } ;
typedef TYPE_1__ js_Function ;
typedef int js_Buffer ;


 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char*) ;

__attribute__((used)) static void reprfun(js_State *J, js_Buffer **sb, js_Function *fun)
{
 int i;
 js_puts(J, sb, "function ");
 js_puts(J, sb, fun->name);
 js_putc(J, sb, '(');
 for (i = 0; i < fun->numparams; ++i) {
  if (i > 0)
   js_puts(J, sb, ", ");
  js_puts(J, sb, fun->vartab[i]);
 }
 js_puts(J, sb, ") { [byte code] }");
}
