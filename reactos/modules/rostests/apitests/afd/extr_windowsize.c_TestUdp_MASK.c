#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  AFD_INFO_RECEIVE_WINDOW_SIZE ; 
 int /*<<< orphan*/  AFD_INFO_SEND_WINDOW_SIZE ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 

__attribute__((used)) static
void
FUNC9(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    struct sockaddr_in addr;
    ULONG OrigReceiveSize, OrigSendSize, ReceiveSize, SendSize;

    Status = FUNC1(&SocketHandle, AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    FUNC8(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &OrigReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(OrigReceiveSize == 0x1000 || OrigReceiveSize == 0x2000, "Invalid size: %lu\n", OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &OrigSendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(OrigSendSize == 0x1000 || OrigSendSize == 0x2000, "Invalid size: %lu\n", OrigSendSize);

    ReceiveSize = 0;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = (ULONG)-1L;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    FUNC7(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC6("0.0.0.0");
    addr.sin_port = FUNC5(0);

    Status = FUNC0(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC8(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = 0;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = (ULONG)-1L;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize + 1;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize + 1;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize - 1;
    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize - 1;
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC2(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC8(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC8(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    FUNC4(SocketHandle);
}