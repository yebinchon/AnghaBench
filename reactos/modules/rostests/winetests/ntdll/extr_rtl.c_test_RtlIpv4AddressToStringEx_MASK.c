#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ USHORT ;
typedef  int ULONG ;
struct TYPE_5__ {int s_b1; int s_b2; int s_b3; int s_b4; } ;
struct TYPE_6__ {TYPE_1__ S_un_b; } ;
struct TYPE_7__ {TYPE_2__ S_un; } ;
typedef  scalar_t__ NTSTATUS ;
typedef  char* LPSTR ;
typedef  TYPE_3__ IN_ADDR ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    CHAR ip_1234[] = "1.2.3.4";
    CHAR ip_1234_80[] = "1.2.3.4:80";
    LPSTR expect;
    CHAR buffer[30];
    NTSTATUS res;
    IN_ADDR ip;
    ULONG size;
    DWORD used;
    USHORT port;

    if (!&pRtlIpv4AddressToStringExA)
    {
        FUNC6("RtlIpv4AddressToStringExA not available\n");
        return;
    }

    ip.S_un.S_un_b.s_b1 = 1;
    ip.S_un.S_un_b.s_b2 = 2;
    ip.S_un.S_un_b.s_b3 = 3;
    ip.S_un.S_un_b.s_b4 = 4;

    port = FUNC0(80);
    expect = ip_1234_80;

    size = sizeof(buffer);
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    used = FUNC5(buffer);
    FUNC2( (res == STATUS_SUCCESS) &&
        (size == FUNC5(expect) + 1) && !FUNC4(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used + 1;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_SUCCESS) &&
        (size == FUNC5(expect) + 1) && !FUNC4(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);

    size = used - 1;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);


    /* to get only the ip, use 0 as port */
    port = 0;
    expect = ip_1234;

    size = sizeof(buffer);
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    used = FUNC5(buffer);
    FUNC2( (res == STATUS_SUCCESS) &&
        (size == FUNC5(expect) + 1) && !FUNC4(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used + 1;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_SUCCESS) &&
        (size == FUNC5(expect) + 1) && !FUNC4(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);

    size = used - 1;
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, port, buffer, &size);
    FUNC2( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);


    /* parameters are checked */
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, 0, buffer, NULL);
    FUNC2(res == STATUS_INVALID_PARAMETER,
        "got 0x%x with '%s' (expected STATUS_INVALID_PARAMETER)\n", res, buffer);

    size = sizeof(buffer);
    res = FUNC3(&ip, 0, NULL, &size);
    FUNC2( res == STATUS_INVALID_PARAMETER,
        "got 0x%x and size %d (expected STATUS_INVALID_PARAMETER)\n", res, size);

    size = sizeof(buffer);
    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(NULL, 0, buffer, &size);
    FUNC2( res == STATUS_INVALID_PARAMETER,
        "got 0x%x and size %d with '%s' (expected STATUS_INVALID_PARAMETER)\n",
        res, size, buffer);
}