
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {scalar_t__ Type; int Metric1; int Gw; int Mask; int Dest; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__* PVOID ;
typedef int PIP_INTERFACE ;
typedef TYPE_1__* PIPROUTE_ENTRY ;
typedef int IP_ADDRESS ;
typedef int IPROUTE_ENTRY ;


 int A2S (int *) ;
 int AddrInitIPv4 (int *,int ) ;
 int DEBUG_INFO ;
 int DbgPrint (char*) ;
 scalar_t__ IP_ROUTE_TYPE_ADD ;
 scalar_t__ IP_ROUTE_TYPE_DEL ;
 int Loopback ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RouterCreateRoute (int *,int *,int *,int ,int ) ;
 int RouterRemoveRoute (int *,int *) ;
 int TDI_INVALID_PARAMETER ;
 int TDI_INVALID_REQUEST ;
 int TDI_NO_RESOURCES ;
 int TDI_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;

TDI_STATUS InfoTdiSetRoute(PIP_INTERFACE IF, PVOID Buffer, UINT BufferSize)
{
    IP_ADDRESS Address, Netmask, Router;
    PIPROUTE_ENTRY Route = Buffer;

    if (!Buffer || BufferSize < sizeof(IPROUTE_ENTRY))
        return TDI_INVALID_PARAMETER;

    AddrInitIPv4( &Address, Route->Dest );
    AddrInitIPv4( &Netmask, Route->Mask );
    AddrInitIPv4( &Router, Route->Gw );

    if (IF == Loopback)
    {
        DbgPrint("Failing attempt to add route to loopback adapter\n");
        return TDI_INVALID_PARAMETER;
    }

    if( Route->Type == IP_ROUTE_TYPE_ADD ) {
        TI_DbgPrint(DEBUG_INFO,("Adding route (%s)\n", A2S(&Address)));
 if (!RouterCreateRoute( &Address, &Netmask, &Router,
          IF, Route->Metric1))
     return TDI_NO_RESOURCES;

        return TDI_SUCCESS;
     } else if( Route->Type == IP_ROUTE_TYPE_DEL ) {
 TI_DbgPrint(DEBUG_INFO,("Removing route (%s)\n", A2S(&Address)));
 if (NT_SUCCESS(RouterRemoveRoute( &Address, &Router )))
            return TDI_SUCCESS;
        else
            return TDI_INVALID_PARAMETER;
     }

     return TDI_INVALID_REQUEST;
}
