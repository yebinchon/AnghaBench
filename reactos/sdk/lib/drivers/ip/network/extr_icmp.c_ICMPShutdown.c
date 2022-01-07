
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int IPPROTO_ICMP ;
 int IPRegisterProtocol (int ,int *) ;
 int STATUS_SUCCESS ;

NTSTATUS ICMPShutdown()
{
    IPRegisterProtocol(IPPROTO_ICMP, ((void*)0));

    return STATUS_SUCCESS;
}
