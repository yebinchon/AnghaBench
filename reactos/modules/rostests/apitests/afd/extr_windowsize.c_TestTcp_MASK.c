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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  AFD_INFO_RECEIVE_WINDOW_SIZE ; 
 int /*<<< orphan*/  AFD_INFO_SEND_WINDOW_SIZE ; 
 void* AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,...) ; 

__attribute__((used)) static
void
FUNC10(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    struct sockaddr_in addr;
    ULONG OrigReceiveSize, OrigSendSize, ReceiveSize, SendSize;

    Status = FUNC2(&SocketHandle, AF_INET, SOCK_STREAM, IPPROTO_TCP);
    FUNC9(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &OrigReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(OrigReceiveSize == 0x1000 || OrigReceiveSize == 0x2000, "Invalid size: %lu\n", OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &OrigSendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(OrigSendSize == 0x1000 || OrigSendSize == 0x2000, "Invalid size: %lu\n", OrigSendSize);

    ReceiveSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    ReceiveSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    FUNC8(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC7("0.0.0.0");
    addr.sin_port = FUNC6(0);

    Status = FUNC0(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC9(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    ReceiveSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_INVALID_PARAMETER, "AfdSetInformation failed with %lx\n", Status);

    FUNC8(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC7("8.8.8.8");
    addr.sin_port = FUNC6(53);

    Status = FUNC1(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC9(Status == STATUS_SUCCESS, "AfdConnect failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = 0;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = (ULONG)-1L;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize + 1;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize + 1;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    ReceiveSize = OrigReceiveSize - 1;
    Status = FUNC4(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);
    SendSize = OrigSendSize - 1;
    Status = FUNC4(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdSetInformation failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, AFD_INFO_RECEIVE_WINDOW_SIZE, NULL, &ReceiveSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(ReceiveSize == OrigReceiveSize, "Invalid size: %lu %lu\n", ReceiveSize, OrigReceiveSize);
    Status = FUNC3(SocketHandle, AFD_INFO_SEND_WINDOW_SIZE, NULL, &SendSize, NULL);
    FUNC9(Status == STATUS_SUCCESS, "AfdGetInformation failed with %lx\n", Status);
    FUNC9(SendSize == OrigSendSize, "Invalid size: %lu %lu\n", SendSize, OrigSendSize);

    FUNC5(SocketHandle);
}