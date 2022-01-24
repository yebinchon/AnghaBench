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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ socket_t ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static socket_t
FUNC3(uint16_t port, uint32_t attempts, uint32_t delay) {
    do {
        FUNC0("Remaining connection attempts: %d", (int) attempts);
        socket_t socket = FUNC2(port);
        if (socket != INVALID_SOCKET) {
            // it worked!
            return socket;
        }
        if (attempts) {
            FUNC1(delay);
        }
    } while (--attempts > 0);
    return INVALID_SOCKET;
}