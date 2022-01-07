
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_2__ {int * type; } ;


 TYPE_1__* type_function_get_retval (int const*) ;

__attribute__((used)) static inline type_t *type_function_get_rettype(const type_t *type)
{
    return type_function_get_retval(type)->type;
}
