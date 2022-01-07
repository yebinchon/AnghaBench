
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
typedef int ULONG ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int AFD_INFO_RECEIVE_WINDOW_SIZE ;
 int AFD_INFO_SEND_WINDOW_SIZE ;
 void* AF_INET ;
 int AfdBind (int ,struct sockaddr const*,int) ;
 int AfdConnect (int ,struct sockaddr const*,int) ;
 int AfdCreateSocket (int *,void*,int ,int ) ;
 int AfdGetInformation (int ,int ,int *,int*,int *) ;
 int AfdSetInformation (int ,int ,int *,int*,int *) ;
 int IPPROTO_TCP ;
 int NtClose (int ) ;
 int SOCK_STREAM ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 void* htons (int) ;
 void* inet_addr (char*) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static
void
TestTcp(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    struct sockaddr_in addr;
    ULONG OrigReceiveSize, OrigSendSize, ReceiveSize, SendSize;

    Status = AfdCreateSocket(&SocketHandle, AF_INET, SOCK_STREAM, IPPROTO_TCP);
    ok(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &OrigReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(OrigReceiveSize == 0x1000 || OrigReceiveSize == 0x2000, "Invalid size: %lu\n", OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &OrigSendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(OrigSendSize == 0x1000 || OrigSendSize == 0x2000, "Invalid size: %lu\n", OrigSendSize);

    ReceiveSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    ReceiveSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("0.0.0.0");
    addr.sin_port = htons(0);

    Status = AfdBind(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    ok(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    ReceiveSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("8.8.8.8");
    addr.sin_port = htons(53);

    Status = AfdConnect(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    ok(Status == STATUS_SUCCESS, "AfdConnect failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize + 1;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize + 1;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize - 1;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize - 1;
    Status = AfdSetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = AfdGetInformation(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, ((void*)0), &ReceiveSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = AfdGetInformation(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, ((void*)0), &SendSize, ((void*)0));
    ok(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    ok(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    NtClose(SocketHandle);
}
