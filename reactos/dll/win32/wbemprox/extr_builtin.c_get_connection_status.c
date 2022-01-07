
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef int IF_OPER_STATUS ;


 int ERR (char*,int) ;



__attribute__((used)) static UINT16 get_connection_status( IF_OPER_STATUS status )
{
    switch (status)
    {
    case 129:
        return 0;
    case 128:
        return 2;
    default:
        ERR("unhandled status %u\n", status);
        break;
    }
    return 0;
}
