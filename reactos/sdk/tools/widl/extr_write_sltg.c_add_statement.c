
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_6__ {int * type; struct TYPE_6__* next; } ;
typedef TYPE_2__ type_list_t ;
struct sltg_typelib {int dummy; } ;
struct TYPE_5__ {int * type; TYPE_2__* type_list; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef TYPE_3__ statement_t ;
 int add_module_typeinfo (struct sltg_typelib*,int *) ;
 int add_type_typeinfo (struct sltg_typelib*,int *) ;
 int error (char*,int) ;

__attribute__((used)) static void add_statement(struct sltg_typelib *typelib, const statement_t *stmt)
{
    switch(stmt->type)
    {
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
        for (; type_entry; type_entry = type_entry->next)
        {

            add_type_typeinfo(typelib, type_entry->type);
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

    default:
        error("add_statement: unhandled statement type %d\n", stmt->type);
        break;
    }
}
