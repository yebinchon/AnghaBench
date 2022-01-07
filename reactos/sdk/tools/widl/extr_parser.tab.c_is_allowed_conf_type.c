
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int type_basic_get_type (int const*) ;
 int type_get_type (int const*) ;

__attribute__((used)) static int is_allowed_conf_type(const type_t *type)
{
    switch (type_get_type(type))
    {
    case 135:
        return TRUE;
    case 149:
        switch (type_basic_get_type(type))
        {
        case 141:
        case 144:
        case 143:
        case 142:
        case 145:
        case 140:
        case 147:
        case 146:
        case 148:
        case 139:
            return TRUE;
        default:
            return FALSE;
        }
    case 151:

        assert(0);

    case 130:
    case 129:
    case 136:
    case 150:
    case 131:
    case 128:
    case 132:
    case 137:
    case 134:
    case 133:
    case 138:
        return FALSE;
    }
    return FALSE;
}
