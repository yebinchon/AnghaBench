
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef TYPE_1__ UUID ;


 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static const char *format_uuid( const UUID *uuid )
{
    static char buffer[40];
    sprintf( buffer, "{%08X-%04X-%04X-%02X%02X-%02X%02X%02X%02X%02X%02X}",
             uuid->Data1, uuid->Data2, uuid->Data3,
             uuid->Data4[0], uuid->Data4[1], uuid->Data4[2], uuid->Data4[3],
             uuid->Data4[4], uuid->Data4[5], uuid->Data4[6], uuid->Data4[7] );
    return buffer;
}
