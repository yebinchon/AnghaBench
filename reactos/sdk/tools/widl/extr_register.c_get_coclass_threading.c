
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; } ;
typedef TYPE_1__ type_t ;


 int ATTR_THREADING ;
 size_t get_attrv (int ,int ) ;

__attribute__((used)) static const char *get_coclass_threading( const type_t *class )
{
    static const char * const models[] =
    {
        ((void*)0),
        "Apartment",
        "Neutral",
        "Single",
        "Free",
        "Both",
    };
    return models[get_attrv( class->attrs, ATTR_THREADING )];
}
