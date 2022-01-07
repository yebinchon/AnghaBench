
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;
 int TRUE ;



 int type_get_type (int const*) ;

__attribute__((used)) static int is_valid_member_operand(const type_t *type)
{
    switch (type_get_type(type))
    {
    case 129:
    case 128:
    case 130:
        return TRUE;
    default:
        return FALSE;
    }
}
