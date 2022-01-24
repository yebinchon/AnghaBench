#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_MAX_BACKLOG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sock_t FUNC8(int family, uint16_t port)
{
    sock_t sock = FUNC7(family, SOCK_STREAM, IPPROTO_TCP);

    if (!FUNC6(sock)) {
        return ~0;
    }

    int ok = FUNC4(sock);

    if (ok && family == AF_INET6) {
        ok = FUNC3(sock);
    }

    if (ok) {
        ok = FUNC5(sock);
    }

    ok = ok && FUNC0(sock, family, port) && (FUNC2(sock, TCP_MAX_BACKLOG) == 0);

    if (!ok) {
        FUNC1(sock);
        return ~0;
    }

    return sock;
}