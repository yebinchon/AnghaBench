
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pronargs; scalar_t__ prorettype; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* Form_pg_proc ;



__attribute__((used)) static bool
noarg_integer_now_func_filter(Form_pg_proc form, void *arg)
{
 Oid *rettype = arg;

 return form->pronargs == 0 && form->prorettype == *rettype;
}
