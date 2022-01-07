
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int IPv4Address; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Address; } ;
typedef TYPE_2__* PIP_ADDRESS ;


 int DEBUG_DATALINK ;
 scalar_t__ IP_ADDRESS_V4 ;
 int TI_DbgPrint (int ,char*) ;

VOID AddrWidenAddress( PIP_ADDRESS Network, PIP_ADDRESS Source,
         PIP_ADDRESS Netmask ) {
    if( Netmask->Type == IP_ADDRESS_V4 ) {
        Network->Type = Netmask->Type;
 Network->Address.IPv4Address =
     Source->Address.IPv4Address & Netmask->Address.IPv4Address;
    } else {
 TI_DbgPrint(DEBUG_DATALINK, ("Don't know address type %d\n",
         Netmask->Type));
 *Network = *Source;
    }
}
