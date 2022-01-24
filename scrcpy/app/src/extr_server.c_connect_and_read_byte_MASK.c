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
typedef  scalar_t__ socket_t ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPV4_LOCALHOST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,char*,int) ; 

__attribute__((used)) static socket_t
FUNC3(uint16_t port) {
    socket_t socket = FUNC1(IPV4_LOCALHOST, port);
    if (socket == INVALID_SOCKET) {
        return INVALID_SOCKET;
    }

    char byte;
    // the connection may succeed even if the server behind the "adb tunnel"
    // is not listening, so read one byte to detect a working connection
    if (FUNC2(socket, &byte, 1) != 1) {
        // the server is not listening yet behind the adb tunnel
        FUNC0(socket);
        return INVALID_SOCKET;
    }
    return socket;
}