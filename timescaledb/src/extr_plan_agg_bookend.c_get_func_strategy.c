
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ func_oid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ FuncStrategy ;


 scalar_t__ InvalidOid ;
 TYPE_1__ first_func_strategy ;
 int first_last_arg_types ;
 int initialize_func_strategy (TYPE_1__*,char*,int,int ) ;
 TYPE_1__ last_func_strategy ;

__attribute__((used)) static FuncStrategy *
get_func_strategy(Oid func_oid)
{
 if (first_func_strategy.func_oid == InvalidOid)
  initialize_func_strategy(&first_func_strategy, "first", 2, first_last_arg_types);
 if (last_func_strategy.func_oid == InvalidOid)
  initialize_func_strategy(&last_func_strategy, "last", 2, first_last_arg_types);
 if (first_func_strategy.func_oid == func_oid)
  return &first_func_strategy;
 if (last_func_strategy.func_oid == func_oid)
  return &last_func_strategy;
 return ((void*)0);
}
