
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ AllocatePort (int *,scalar_t__) ;
 scalar_t__ AllocatePortFromRange (int *,scalar_t__,scalar_t__) ;
 int UDPPorts ;
 scalar_t__ UDP_DYNAMIC_PORTS ;
 scalar_t__ UDP_STARTING_PORT ;

UINT UDPAllocatePort( UINT HintPort ) {
    if( HintPort ) {
        if( AllocatePort( &UDPPorts, HintPort ) ) return HintPort;
        else return (UINT)-1;
    } else return AllocatePortFromRange
               ( &UDPPorts, UDP_STARTING_PORT,
                 UDP_STARTING_PORT + UDP_DYNAMIC_PORTS );
}
