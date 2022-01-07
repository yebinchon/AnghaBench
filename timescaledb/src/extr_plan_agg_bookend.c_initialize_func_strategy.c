
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int func_oid; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ FuncStrategy ;


 int LookupFuncName (int *,int,int *,int) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;
 char* ts_extension_schema_name () ;

__attribute__((used)) static FuncStrategy *
initialize_func_strategy(FuncStrategy *func_strategy, char *name, int nargs, Oid arg_types[])
{
 List *l = list_make2(makeString(ts_extension_schema_name()), makeString(name));
 func_strategy->func_oid = LookupFuncName(l, nargs, arg_types, 0);
 return func_strategy;
}
