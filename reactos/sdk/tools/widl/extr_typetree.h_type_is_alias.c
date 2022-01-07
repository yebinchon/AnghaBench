
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_alias; } ;
typedef TYPE_1__ type_t ;



__attribute__((used)) static inline int type_is_alias(const type_t *type)
{
    return type->is_alias;
}
