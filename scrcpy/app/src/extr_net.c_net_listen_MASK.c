#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ socket_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  reuse ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  TYPE_2__ SOCKADDR_IN ;
typedef  int /*<<< orphan*/  SOCKADDR ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

socket_t
FUNC8(uint32_t addr, uint16_t port, int backlog) {
    socket_t sock = FUNC7(AF_INET, SOCK_STREAM, 0);
    if (sock == INVALID_SOCKET) {
        FUNC5("socket");
        return INVALID_SOCKET;
    }

    int reuse = 1;
    if (FUNC6(sock, SOL_SOCKET, SO_REUSEADDR, (const void *) &reuse,
                   sizeof(reuse)) == -1) {
        FUNC5("setsockopt(SO_REUSEADDR)");
    }

    SOCKADDR_IN sin;
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = FUNC1(addr); // htonl() harmless on INADDR_ANY
    sin.sin_port = FUNC2(port);

    if (FUNC0(sock, (SOCKADDR *) &sin, sizeof(sin)) == SOCKET_ERROR) {
        FUNC5("bind");
        FUNC4(sock);
        return INVALID_SOCKET;
    }

    if (FUNC3(sock, backlog) == SOCKET_ERROR) {
        FUNC5("listen");
        FUNC4(sock);
        return INVALID_SOCKET;
    }

    return sock;
}