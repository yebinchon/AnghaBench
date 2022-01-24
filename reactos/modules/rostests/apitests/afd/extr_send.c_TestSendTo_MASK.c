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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ STATUS_SUCCESS ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 

__attribute__((used)) static
void
FUNC9(void)
{
    NTSTATUS Status;
    HANDLE SocketHandle;
    CHAR Buffer[32];
    struct sockaddr_in addr;

    FUNC4(Buffer, sizeof(Buffer));

    Status = FUNC1(&SocketHandle, AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    FUNC8(Status == STATUS_SUCCESS, "AfdCreateSocket failed with %lx\n", Status);

    FUNC7(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC6("0.0.0.0");
    addr.sin_port = FUNC5(0);

    Status = FUNC0(SocketHandle, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC8(Status == STATUS_SUCCESS, "AfdBind failed with %lx\n", Status);

    FUNC7(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC6("8.8.8.8");
    addr.sin_port = FUNC5(53);

    Status = FUNC2(SocketHandle, NULL, 0, (const struct sockaddr *)&addr, sizeof(addr));
    FUNC8(Status == STATUS_SUCCESS, "AfdSendTo failed with %lx\n", Status);

    Status = FUNC2(SocketHandle, Buffer, sizeof(Buffer), (const struct sockaddr *)&addr, sizeof(addr));
    FUNC8(Status == STATUS_SUCCESS, "AfdSendTo failed with %lx\n", Status);

    FUNC3(SocketHandle);
}