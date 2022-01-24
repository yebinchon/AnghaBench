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
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 void* AF_INET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ STATUS_INVALID_CONNECTION ; 
 scalar_t__ STATUS_SUCCESS ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 

__attribute__((used)) static
void
FUNC10(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    CHAR Buffer[32];
    struct sockaddr_in addr;

    FUNC5(Buffer, sizeof(Buffer));

    Status = FUNC2(&SocketHandle, AF_INET, SOCK_STREAM, IPPROTO_TCP);
    FUNC9(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, NULL, 0);
    FUNC9(Status == STATUS_INVALID_CONNECTION, "AfdSend failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, Buffer, sizeof(Buffer));
    FUNC9(Status == STATUS_INVALID_CONNECTION, "AfdSend failed with %lx\n", Status);

    FUNC8(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC7("0.0.0.0");
    addr.sin_port = FUNC6(0);

    Status = FUNC0(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC9(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    FUNC8(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC7("8.8.8.8");
    addr.sin_port = FUNC6(53);

    Status = FUNC1(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC9(Status == STATUS_SUCCESS, "AfdConnect failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, NULL, 0);
    FUNC9(Status == STATUS_SUCCESS, "AfdSend failed with %lx\n", Status);

    Status = FUNC3(SocketHandle, Buffer, sizeof(Buffer));
    FUNC9(Status == STATUS_SUCCESS, "AfdSend failed with %lx\n", Status);

    FUNC4(SocketHandle);
}