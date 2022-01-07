
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * length_is; } ;
struct TYPE_9__ {TYPE_1__ array; } ;
struct TYPE_10__ {TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;


 scalar_t__ TYPE_ARRAY ;
 int assert (int) ;
 TYPE_3__* type_get_real_type (TYPE_3__ const*) ;
 scalar_t__ type_get_type (TYPE_3__ const*) ;

__attribute__((used)) static inline int type_array_has_variance(const type_t *type)
{
    type = type_get_real_type(type);
    assert(type_get_type(type) == TYPE_ARRAY);
    return (type->details.array.length_is != ((void*)0));
}
