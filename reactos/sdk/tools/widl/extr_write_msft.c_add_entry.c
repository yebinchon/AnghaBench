
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_8__ {TYPE_4__* type; struct TYPE_8__* next; } ;
typedef TYPE_2__ type_list_t ;
struct TYPE_7__ {int * type; TYPE_2__* type_list; } ;
struct TYPE_9__ {int type; TYPE_1__ u; } ;
typedef TYPE_3__ statement_t ;
typedef int msft_typelib_t ;
struct TYPE_10__ {int attrs; } ;


 int ATTR_PUBLIC ;
 int add_module_typeinfo (int *,int *) ;
 int add_type_typeinfo (int *,int *) ;
 int add_typedef_typeinfo (int *,TYPE_4__*) ;
 int is_attr (int ,int ) ;
 int * type_alias_get_aliasee (TYPE_4__*) ;

__attribute__((used)) static void add_entry(msft_typelib_t *typelib, const statement_t *stmt)
{
    switch(stmt->type) {
    case 133:
    case 135:
    case 131:
    case 137:
    case 136:

        break;
    case 134:

        break;
    case 129:
    {
        const type_list_t *type_entry = stmt->u.type_list;
        for (; type_entry; type_entry = type_entry->next) {


            if (is_attr(type_entry->type->attrs, ATTR_PUBLIC))
                add_typedef_typeinfo(typelib, type_entry->type);
            else
                add_type_typeinfo(typelib, type_alias_get_aliasee(type_entry->type));
        }
        break;
    }
    case 132:
        add_module_typeinfo(typelib, stmt->u.type);
        break;
    case 130:
    case 128:
    {
        type_t *type = stmt->u.type;
        add_type_typeinfo(typelib, type);
        break;
    }
    }
}
