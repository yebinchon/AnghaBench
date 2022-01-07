
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* name; } ;
typedef TYPE_1__ type_t ;
struct sltg_typelib {int dummy; } ;
 int add_coclass_typeinfo (struct sltg_typelib*,TYPE_1__*) ;
 int add_enum_typeinfo (struct sltg_typelib*,TYPE_1__*) ;
 int add_interface_typeinfo (struct sltg_typelib*,TYPE_1__*) ;
 int add_structure_typeinfo (struct sltg_typelib*,TYPE_1__*) ;
 int add_union_typeinfo (struct sltg_typelib*,TYPE_1__*) ;
 int chat (char*,char*,int) ;
 int error (char*,int,char*) ;
 int type_get_type (TYPE_1__*) ;

__attribute__((used)) static void add_type_typeinfo(struct sltg_typelib *typelib, type_t *type)
{
    chat("add_type_typeinfo: adding %s, type %d\n", type->name, type_get_type(type));

    switch (type_get_type(type))
    {
    case 131:
        add_interface_typeinfo(typelib, type);
        break;
    case 129:
        add_structure_typeinfo(typelib, type);
        break;
    case 132:
        add_enum_typeinfo(typelib, type);
        break;
    case 128:
        add_union_typeinfo(typelib, type);
        break;
    case 133:
        add_coclass_typeinfo(typelib, type);
        break;
    case 134:
    case 130:
        break;
    default:
        error("add_type_typeinfo: unhandled type %d for %s\n", type_get_type(type), type->name);
        break;
    }
}
