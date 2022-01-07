
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int ProtoBitBuffer; } ;
typedef TYPE_1__* PPORT_SET ;


 int ExFreePoolWithTag (int ,int ) ;
 int PORT_SET_TAG ;

VOID PortsShutdown( PPORT_SET PortSet ) {
    ExFreePoolWithTag( PortSet->ProtoBitBuffer, PORT_SET_TAG );
}
