
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int ATTR_DECODE ;
 int ATTR_ENCODE ;
 scalar_t__ is_attr (int ,int ) ;
 int write_serialize_function (int *,TYPE_1__ const*,TYPE_1__ const*,char*,char*) ;

void write_serialize_functions(FILE *file, const type_t *type, const type_t *iface)
{
    if (is_attr(type->attrs, ATTR_ENCODE))
    {
        write_serialize_function(file, type, iface, "AlignSize", "SIZE_T");
        write_serialize_function(file, type, iface, "Encode", ((void*)0));
    }
    if (is_attr(type->attrs, ATTR_DECODE))
    {
        write_serialize_function(file, type, iface, "Decode", ((void*)0));
        write_serialize_function(file, type, iface, "Free", ((void*)0));
    }
}
