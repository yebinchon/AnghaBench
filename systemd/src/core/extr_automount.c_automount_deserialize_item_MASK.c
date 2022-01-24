#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ dev_t ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_8__ {int /*<<< orphan*/  pipe_fd; int /*<<< orphan*/  expire_tokens; int /*<<< orphan*/  tokens; scalar_t__ dev_id; scalar_t__ result; scalar_t__ deserialized_state; } ;
typedef  TYPE_1__ FDSet ;
typedef  scalar_t__ AutomountState ;
typedef  scalar_t__ AutomountResult ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ AUTOMOUNT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC10 (char const*,int*) ; 
 scalar_t__ FUNC11 (char const*,unsigned long*) ; 
 scalar_t__ FUNC12 (char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 

__attribute__((used)) static int FUNC17(Unit *u, const char *key, const char *value, FDSet *fds) {
        Automount *a = FUNC0(u);
        int r;

        FUNC2(a);
        FUNC2(fds);

        if (FUNC16(key, "state")) {
                AutomountState state;

                state = FUNC4(value);
                if (state < 0)
                        FUNC8(u, "Failed to parse state value: %s", value);
                else
                        a->deserialized_state = state;
        } else if (FUNC16(key, "result")) {
                AutomountResult f;

                f = FUNC3(value);
                if (f < 0)
                        FUNC8(u, "Failed to parse result value: %s", value);
                else if (f != AUTOMOUNT_SUCCESS)
                        a->result = f;

        } else if (FUNC16(key, "dev-id")) {
                unsigned long d;

                if (FUNC11(value, &d) < 0)
                        FUNC8(u, "Failed to parse dev-id value: %s", value);
                else
                        a->dev_id = (dev_t) d;

        } else if (FUNC16(key, "token")) {
                unsigned token;

                if (FUNC12(value, &token) < 0)
                        FUNC8(u, "Failed to parse token value: %s", value);
                else {
                        r = FUNC14(&a->tokens, NULL);
                        if (r < 0) {
                                FUNC7();
                                return 0;
                        }

                        r = FUNC15(a->tokens, FUNC1(token));
                        if (r < 0)
                                FUNC9(u, r, "Failed to add token to set: %m");
                }
        } else if (FUNC16(key, "expire-token")) {
                unsigned token;

                if (FUNC12(value, &token) < 0)
                        FUNC8(u, "Failed to parse token value: %s", value);
                else {
                        r = FUNC14(&a->expire_tokens, NULL);
                        if (r < 0) {
                                FUNC7();
                                return 0;
                        }

                        r = FUNC15(a->expire_tokens, FUNC1(token));
                        if (r < 0)
                                FUNC9(u, r, "Failed to add expire token to set: %m");
                }
        } else if (FUNC16(key, "pipe-fd")) {
                int fd;

                if (FUNC10(value, &fd) < 0 || fd < 0 || !FUNC5(fds, fd))
                        FUNC8(u, "Failed to parse pipe-fd value: %s", value);
                else {
                        FUNC13(a->pipe_fd);
                        a->pipe_fd = FUNC6(fds, fd);
                }
        } else
                FUNC8(u, "Unknown serialization key: %s", key);

        return 0;
}