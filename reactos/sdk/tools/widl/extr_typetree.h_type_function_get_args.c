
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int var_list_t ;
struct TYPE_9__ {TYPE_1__* function; } ;
struct TYPE_10__ {TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;
struct TYPE_8__ {int * args; } ;


 scalar_t__ TYPE_FUNCTION ;
 int assert (int) ;
 TYPE_3__* type_get_real_type (TYPE_3__ const*) ;
 scalar_t__ type_get_type (TYPE_3__ const*) ;

__attribute__((used)) static inline var_list_t *type_function_get_args(const type_t *type)
{
    type = type_get_real_type(type);
    assert(type_get_type(type) == TYPE_FUNCTION);
    return type->details.function->args;
}
