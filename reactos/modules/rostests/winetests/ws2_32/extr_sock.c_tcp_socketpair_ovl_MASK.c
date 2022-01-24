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
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSA_FLAG_OVERLAPPED ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 int FUNC2 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,struct sockaddr*,int) ; 
 int FUNC5 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(SOCKET *src, SOCKET *dst)
{
    SOCKET server = INVALID_SOCKET;
    struct sockaddr_in addr;
    int len, ret;

    *src = INVALID_SOCKET;
    *dst = INVALID_SOCKET;

    *src = FUNC0(AF_INET, SOCK_STREAM, IPPROTO_TCP, NULL, 0, WSA_FLAG_OVERLAPPED);
    if (*src == INVALID_SOCKET)
        goto end;

    server = FUNC0(AF_INET, SOCK_STREAM, IPPROTO_TCP, NULL, 0, WSA_FLAG_OVERLAPPED);
    if (server == INVALID_SOCKET)
        goto end;

    FUNC8(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC6("127.0.0.1");
    ret = FUNC2(server, (struct sockaddr *)&addr, sizeof(addr));
    if (ret != 0)
        goto end;

    len = sizeof(addr);
    ret = FUNC5(server, (struct sockaddr *)&addr, &len);
    if (ret != 0)
        goto end;

    ret = FUNC7(server, 1);
    if (ret != 0)
        goto end;

    ret = FUNC4(*src, (struct sockaddr *)&addr, sizeof(addr));
    if (ret != 0)
        goto end;

    len = sizeof(addr);
    *dst = FUNC1(server, (struct sockaddr *)&addr, &len);

end:
    if (server != INVALID_SOCKET)
        FUNC3(server);
    if (*src != INVALID_SOCKET && *dst != INVALID_SOCKET)
        return 0;
    FUNC3(*src);
    FUNC3(*dst);
    return -1;
}