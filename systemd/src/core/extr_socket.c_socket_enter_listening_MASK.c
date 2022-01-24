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
typedef  int /*<<< orphan*/  Socket ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_LISTENING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Socket *s) {
        int r;
        FUNC1(s);

        r = FUNC5(s);
        if (r < 0) {
                FUNC2(FUNC0(s), r, "Failed to watch sockets: %m");
                goto fail;
        }

        FUNC4(s, SOCKET_LISTENING);
        return;

fail:
        FUNC3(s, SOCKET_FAILURE_RESOURCES);
}