
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CIMTYPE ;
typedef int BOOL ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_int( CIMTYPE type )
{
    switch (type)
    {
    case 132:
    case 135:
    case 134:
    case 133:
    case 128:
    case 131:
    case 130:
    case 129:
        return TRUE;
    default:
        return FALSE;
    }
}
