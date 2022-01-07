
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int runner ;
typedef int rangeinitializer ;
struct TYPE_4__ {scalar_t__ arg; int skip; } ;
typedef TYPE_1__ exarg_T ;
typedef int char_u ;


 int DoPyCommand (char*,int ,int ,void*) ;
 scalar_t__ init_range_cmd ;
 scalar_t__ run_cmd ;
 int * script_get (TYPE_1__*,scalar_t__) ;
 int vim_free (int *) ;

void
ex_py3(exarg_T *eap)
{
    char_u *script;

    script = script_get(eap, eap->arg);
    if (!eap->skip)
    {
 DoPyCommand(script == ((void*)0) ? (char *) eap->arg : (char *) script,
  (rangeinitializer) init_range_cmd,
  (runner) run_cmd,
  (void *) eap);
    }
    vim_free(script);
}
