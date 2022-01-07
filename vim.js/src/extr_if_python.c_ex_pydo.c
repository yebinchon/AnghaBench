
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int runner ;
typedef int rangeinitializer ;
struct TYPE_3__ {scalar_t__ arg; } ;
typedef TYPE_1__ exarg_T ;


 int DoPyCommand (char*,int ,int ,void*) ;
 scalar_t__ init_range_cmd ;
 scalar_t__ run_do ;

void
ex_pydo(exarg_T *eap)
{
    DoPyCommand((char *)eap->arg,
     (rangeinitializer) init_range_cmd,
     (runner)run_do,
     (void *)eap);
}
