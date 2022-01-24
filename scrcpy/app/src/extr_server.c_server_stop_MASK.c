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
struct server {scalar_t__ server_socket; scalar_t__ video_socket; scalar_t__ control_socket; scalar_t__ process; scalar_t__ tunnel_enabled; } ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ PROCESS_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct server*) ; 

void
FUNC7(struct server *server) {
    if (server->server_socket != INVALID_SOCKET) {
        FUNC3(&server->server_socket);
    }
    if (server->video_socket != INVALID_SOCKET) {
        FUNC3(&server->video_socket);
    }
    if (server->control_socket != INVALID_SOCKET) {
        FUNC3(&server->control_socket);
    }

    FUNC2(server->process != PROCESS_NONE);

    if (!FUNC5(server->process)) {
        FUNC1("Could not terminate server");
    }

    FUNC4(server->process, NULL); // ignore exit code
    FUNC0("Server terminated");

    if (server->tunnel_enabled) {
        // ignore failure
        FUNC6(server);
    }
}