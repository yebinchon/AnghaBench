
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; int type; } ;
typedef TYPE_1__ var_t ;


 int FC_RP ;
 int TDT_IGNORE_STRINGS ;



 int TRUE ;
 int get_pointer_fc (int ,int ,int) ;
 int type_array_is_decl_as_ptr (int ) ;
 int typegen_detect_type (int ,int ,int ) ;

__attribute__((used)) static int cant_be_null(const var_t *v)
{
    switch (typegen_detect_type(v->type, v->attrs, TDT_IGNORE_STRINGS))
    {
    case 130:
        if (!type_array_is_decl_as_ptr( v->type )) return 0;

    case 128:
        return (get_pointer_fc(v->type, v->attrs, TRUE) == FC_RP);
    case 129:
        return TRUE;
    default:
        return 0;
    }

}
