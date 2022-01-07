
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ PIP_INTERFACE ;


 int AT_ARP ;
 int AT_ENTITY ;
 int AT_NULL ;
 int AddEntity (int ,scalar_t__,int ) ;
 int CL_NL_ENTITY ;
 int CL_NL_IP ;
 int IF_ENTITY ;
 int IF_MIB ;
 scalar_t__ Loopback ;

VOID InsertTDIInterfaceEntity( PIP_INTERFACE Interface ) {
    AddEntity(IF_ENTITY, Interface, IF_MIB);

    AddEntity(AT_ENTITY, Interface,
              (Interface != Loopback) ? AT_ARP : AT_NULL);


    AddEntity(CL_NL_ENTITY, Interface, CL_NL_IP);
}
