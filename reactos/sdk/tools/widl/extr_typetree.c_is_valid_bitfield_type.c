
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;
 int TRUE ;
 int type_basic_get_type (int const*) ;
 int type_get_type (int const*) ;

__attribute__((used)) static int is_valid_bitfield_type(const type_t *type)
{
    switch (type_get_type(type))
    {
    case 128:
        return TRUE;
    case 144:
        switch (type_basic_get_type(type))
        {
        case 131:
        case 135:
        case 134:
        case 132:
        case 136:
        case 133:
        case 130:
        case 142:
        case 137:
        case 143:
        case 129:
        case 140:
            return TRUE;
        case 139:
        case 141:
        case 138:
            return FALSE;
        }
        return FALSE;
    default:
        return FALSE;
    }
}
