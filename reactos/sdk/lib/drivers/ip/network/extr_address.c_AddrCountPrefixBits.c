
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int IPv4Address; } ;
struct TYPE_5__ {scalar_t__ Type; TYPE_1__ Address; } ;
typedef TYPE_2__* PIP_ADDRESS ;


 int DEBUG_DATALINK ;
 scalar_t__ IP_ADDRESS_V4 ;
 int IPv4NToHl (int ) ;
 int TI_DbgPrint (int ,char*) ;

UINT AddrCountPrefixBits( PIP_ADDRESS Netmask ) {
    UINT Prefix = 0;
    if( Netmask->Type == IP_ADDRESS_V4 ) {
 ULONG BitTest = 0x80000000;




 ULONG TestMask = IPv4NToHl(Netmask->Address.IPv4Address);

 while( (BitTest & TestMask) == BitTest ) {
     Prefix++;
     BitTest >>= 1;
 }
 return Prefix;
    } else {
 TI_DbgPrint(DEBUG_DATALINK, ("Don't know address type %d\n",
         Netmask->Type));
 return 0;
    }
}
