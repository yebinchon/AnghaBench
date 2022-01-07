
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int * Address; } ;
typedef TYPE_1__* PTRANSPORT_ADDRESS ;


 int AFD_DbgPrint (int ,char*) ;
 int MID_TRACE ;
 scalar_t__ TaLengthOfAddress (int *) ;

UINT TaLengthOfTransportAddress( PTRANSPORT_ADDRESS Addr )
{
    UINT AddrLen = TaLengthOfAddress(&Addr->Address[0]);

    if (!AddrLen)
        return 0;

    AddrLen += sizeof(ULONG);

    AFD_DbgPrint(MID_TRACE,("AddrLen %x\n", AddrLen));

    return AddrLen;
}
