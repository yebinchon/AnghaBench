
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_service_type_t ;
__attribute__((used)) static int scan_service_type_Supported( scan_service_type_t service_type )
{
    switch( service_type )
    {
        case 130:
        case 132:
        case 133:
        case 128:
        case 129:
        case 131:
            return 1;
        default:
            break;
    }
    return 0;
}
