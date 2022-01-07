
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ AddressLength; } ;
typedef TYPE_1__* PTA_ADDRESS ;


 int AFD_DbgPrint (int ,char*) ;
 int MID_TRACE ;

UINT TaLengthOfAddress( PTA_ADDRESS Addr )
{
    UINT AddrLen = Addr->AddressLength;

    if (!AddrLen)
        return 0;

    AddrLen += 2 * sizeof( USHORT );

    AFD_DbgPrint(MID_TRACE,("AddrLen %x\n", AddrLen));

    return AddrLen;
}
