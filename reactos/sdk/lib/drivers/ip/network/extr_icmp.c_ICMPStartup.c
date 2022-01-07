
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int ICMPReceive ;
 int IPPROTO_ICMP ;
 int IPRegisterProtocol (int ,int ) ;
 int STATUS_SUCCESS ;

NTSTATUS ICMPStartup()
{
    IPRegisterProtocol(IPPROTO_ICMP, ICMPReceive);

    return STATUS_SUCCESS;
}
