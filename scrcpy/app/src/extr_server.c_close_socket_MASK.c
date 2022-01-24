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
typedef  scalar_t__ socket_t ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(socket_t *socket) {
    FUNC1(*socket != INVALID_SOCKET);
    FUNC3(*socket, SHUT_RDWR);
    if (!FUNC2(*socket)) {
        FUNC0("Could not close socket");
        return;
    }
    *socket = INVALID_SOCKET;
}