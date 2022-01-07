
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int var_list_t ;
struct TYPE_9__ {TYPE_1__* enumeration; } ;
struct TYPE_10__ {TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;
struct TYPE_8__ {int * enums; } ;


 scalar_t__ TYPE_ENUM ;
 int assert (int) ;
 TYPE_3__* type_get_real_type (TYPE_3__ const*) ;
 scalar_t__ type_get_type (TYPE_3__ const*) ;

__attribute__((used)) static inline var_list_t *type_enum_get_values(const type_t *type)
{
    type = type_get_real_type(type);
    assert(type_get_type(type) == TYPE_ENUM);
    return type->details.enumeration->enums;
}
