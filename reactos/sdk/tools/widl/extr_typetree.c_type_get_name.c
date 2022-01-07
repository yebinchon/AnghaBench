
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; char const* c_name; } ;
typedef TYPE_1__ type_t ;
typedef enum name_type { ____Placeholder_name_type } name_type ;




 int assert (int ) ;

const char *type_get_name(const type_t *type, enum name_type name_type)
{
    switch(name_type) {
    case 128:
        return type->name;
    case 129:
        return type->c_name;
    }

    assert(0);
    return ((void*)0);
}
