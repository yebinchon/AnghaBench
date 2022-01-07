
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; int type; } ;
typedef TYPE_1__ var_t ;
struct TYPE_6__ {int attrs; } ;
typedef TYPE_2__ type_t ;


 int ATTR_IMPLICIT_HANDLE ;
 int client ;
 int fprintf (int ,char*) ;
 TYPE_1__* get_attrp (int ,int ) ;
 int write_type_decl (int ,int ,int ) ;

__attribute__((used)) static void write_implicithandledecl(type_t *iface)
{
    const var_t *implicit_handle = get_attrp(iface->attrs, ATTR_IMPLICIT_HANDLE);

    if (implicit_handle)
    {
        write_type_decl( client, implicit_handle->type, implicit_handle->name );
        fprintf(client, ";\n\n");
    }
}
