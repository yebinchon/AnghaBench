
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;


 int DeallocatePort (int *,int ) ;
 int UDPPorts ;

VOID UDPFreePort( UINT Port ) {
    DeallocatePort( &UDPPorts, Port );
}
