
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;
typedef int CHAR ;
typedef int Buffer ;


 void* AF_INET ;
 scalar_t__ AfdBind (int ,struct sockaddr const*,int) ;
 scalar_t__ AfdCreateSocket (int *,void*,int ,int ) ;
 scalar_t__ AfdSendTo (int ,int *,int,struct sockaddr const*,int) ;
 int IPPROTO_UDP ;
 int NtClose (int ) ;
 int RtlZeroMemory (int *,int) ;
 int SOCK_DGRAM ;
 scalar_t__ STATUS_SUCCESS ;
 void* htons (int) ;
 void* inet_addr (char*) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static
void
TestSendTo(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    CHAR Buffer[32];
    struct sockaddr_in addr;

    RtlZeroMemory(Buffer, sizeof(Buffer));

    Status = AfdCreateSocket(&SocketHandle, AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    ok(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("0.0.0.0");
    addr.sin_port = htons(0);

    Status = AfdBind(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    ok(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("8.8.8.8");
    addr.sin_port = htons(53);

    Status = AfdSendTo(SocketHandle, ((void*)0), 0, (const struct sockaddr *)&addr, sizeof(addr));
    ok(Status == STATUS_SUCCESS, "AfdSendTo failed with %lx\n", Status);

    Status = AfdSendTo(SocketHandle, Buffer, sizeof(Buffer), (const struct sockaddr *)&addr, sizeof(addr));
    ok(Status == STATUS_SUCCESS, "AfdSendTo failed with %lx\n", Status);

    NtClose(SocketHandle);
}
