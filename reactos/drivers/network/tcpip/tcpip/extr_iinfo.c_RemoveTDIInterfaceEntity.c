
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PIP_INTERFACE ;


 int RemoveEntityByContext (int ) ;

VOID RemoveTDIInterfaceEntity( PIP_INTERFACE Interface ) {

    RemoveEntityByContext(Interface);
}
