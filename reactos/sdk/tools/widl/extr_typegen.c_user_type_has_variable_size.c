
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;




 int TRUE ;
 scalar_t__ TYPE_STRUCT ;
 int get_struct_fc (int const*) ;
 scalar_t__ is_ptr (int const*) ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static int user_type_has_variable_size(const type_t *t)
{
    if (is_ptr(t))
        return TRUE;
    else if (type_get_type(t) == TYPE_STRUCT)
    {
        switch (get_struct_fc(t))
        {
        case 128:
        case 130:
        case 131:
        case 129:
            return TRUE;
        }
    }


    return FALSE;
}
