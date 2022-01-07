
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCTYPE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_genitive_name_supported( LCTYPE lctype )
{
    switch(lctype & 0xffff)
    {
    case 140:
    case 135:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
    case 139:
    case 138:
    case 137:
    case 136:
         return TRUE;
    default:
         return FALSE;
    }
}
