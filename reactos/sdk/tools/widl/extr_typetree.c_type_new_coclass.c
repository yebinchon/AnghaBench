
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int line_number; int input_name; } ;
struct TYPE_6__ {scalar_t__ type_type; char* name; TYPE_1__ loc_info; scalar_t__ defined; } ;
typedef TYPE_2__ type_t ;


 scalar_t__ TYPE_COCLASS ;
 int error_loc (char*,char*,int ,int ) ;
 TYPE_2__* get_type (scalar_t__,char*,int *,int ) ;

type_t *type_new_coclass(char *name)
{
    type_t *type = get_type(TYPE_COCLASS, name, ((void*)0), 0);
    if (type->type_type != TYPE_COCLASS || type->defined)
        error_loc("%s: redefinition error; original definition was at %s:%d\n",
                  type->name, type->loc_info.input_name, type->loc_info.line_number);
    type->name = name;
    return type;
}
