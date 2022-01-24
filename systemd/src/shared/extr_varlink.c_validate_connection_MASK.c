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
struct ucred {scalar_t__ uid; scalar_t__ n_connections; scalar_t__ connections_max; unsigned int connections_per_uid_max; int /*<<< orphan*/  by_uid; int /*<<< orphan*/  flags; } ;
typedef  struct ucred const VarlinkServer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VARLINK_SERVER_ACCOUNT_UID ; 
 int /*<<< orphan*/  VARLINK_SERVER_MYSELF_ONLY ; 
 int /*<<< orphan*/  VARLINK_SERVER_ROOT_ONLY ; 
 int /*<<< orphan*/  FUNC3 (struct ucred const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred const*,char*,...) ; 

__attribute__((used)) static int FUNC8(VarlinkServer *server, const struct ucred *ucred) {
        int allowed = -1;

        FUNC3(server);
        FUNC3(ucred);

        if (FUNC0(server->flags, VARLINK_SERVER_ROOT_ONLY))
                allowed = ucred->uid == 0;

        if (FUNC0(server->flags, VARLINK_SERVER_MYSELF_ONLY))
                allowed = allowed > 0 || ucred->uid == FUNC4();

        if (allowed == 0) { /* Allow access when it is explicitly allowed or when neither
                             * VARLINK_SERVER_ROOT_ONLY nor VARLINK_SERVER_MYSELF_ONLY are specified. */
                FUNC7(server, "Unprivileged client attempted connection, refusing.");
                return 0;
        }

        if (server->n_connections >= server->connections_max) {
                FUNC7(server, "Connection limit of %u reached, refusing.", server->connections_max);
                return 0;
        }

        if (FUNC0(server->flags, VARLINK_SERVER_ACCOUNT_UID)) {
                unsigned c;

                if (!FUNC6(ucred->uid)) {
                        FUNC7(server, "Client with invalid UID attempted connection, refusing.");
                        return 0;
                }

                c = FUNC1(FUNC5(server->by_uid, FUNC2(ucred->uid)));
                if (c >= server->connections_per_uid_max) {
                        FUNC7(server, "Per-UID connection limit of %u reached, refusing.",
                                           server->connections_per_uid_max);
                        return 0;
                }
        }

        return 1;
}