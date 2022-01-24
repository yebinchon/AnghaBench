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
struct TYPE_5__ {int s_b1; int s_b2; int s_b3; int s_b4; } ;
struct TYPE_6__ {TYPE_1__ S_un_b; } ;
struct TYPE_7__ {TYPE_2__ S_un; } ;
typedef  TYPE_3__ IN_ADDR ;
typedef  int DWORD_PTR ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,...) ; 
 char* FUNC3 (TYPE_3__*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    CHAR buffer[20];
    CHAR *res;
    IN_ADDR ip;
    DWORD_PTR len;

    if (!&pRtlIpv4AddressToStringA)
    {
        FUNC6("RtlIpv4AddressToStringA not available\n");
        return;
    }

    ip.S_un.S_un_b.s_b1 = 1;
    ip.S_un.S_un_b.s_b2 = 2;
    ip.S_un.S_un_b.s_b3 = 3;
    ip.S_un.S_un_b.s_b4 = 4;

    FUNC1(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = FUNC3(&ip, buffer);
    len = FUNC4(buffer);
    FUNC2(res == (buffer + len), "got %p with '%s' (expected %p)\n", res, buffer, buffer + len);

    res = FUNC3(&ip, NULL);
    FUNC2( (res == (char *)~0) ||
        FUNC0(res == (char *)len),        /* XP and w2003 */
        "got %p (expected ~0)\n", res);

    if (0) {
        /* this crashes in windows */
        FUNC1(buffer, '#', sizeof(buffer) - 1);
        buffer[sizeof(buffer) -1] = 0;
        res = FUNC3(NULL, buffer);
        FUNC5("got %p with '%s'\n", res, buffer);
    }

    if (0) {
        /* this crashes in windows */
        res = FUNC3(NULL, NULL);
        FUNC5("got %p\n", res);
    }
}