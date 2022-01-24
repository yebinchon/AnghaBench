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
typedef  int /*<<< orphan*/  uint64_t ;
struct context {int quit; int /*<<< orphan*/ * fds; } ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  enumerator2_callback ; 
 int /*<<< orphan*/  enumerator_callback ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,struct context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vtable ; 
 int /*<<< orphan*/  vtable2 ; 

__attribute__((used)) static void *FUNC18(void *p) {
        struct context *c = p;
        sd_bus *bus = NULL;
        sd_id128_t id;
        int r;

        c->quit = false;

        FUNC2(FUNC17(&id) >= 0);

        FUNC2(FUNC10(&bus) >= 0);
        FUNC2(FUNC12(bus, c->fds[0], c->fds[0]) >= 0);
        FUNC2(FUNC13(bus, 1, id) >= 0);

        FUNC2(FUNC8(bus, NULL, "/foo", "org.freedesktop.systemd.test", vtable, c) >= 0);
        FUNC2(FUNC8(bus, NULL, "/foo", "org.freedesktop.systemd.test2", vtable, c) >= 0);
        FUNC2(FUNC5(bus, NULL, "/value", "org.freedesktop.systemd.ValueTest", vtable2, NULL, FUNC1(20)) >= 0);
        FUNC2(FUNC6(bus, NULL, "/value", enumerator_callback, NULL) >= 0);
        FUNC2(FUNC6(bus, NULL, "/value/a", enumerator2_callback, NULL) >= 0);
        FUNC2(FUNC7(bus, NULL, "/value") >= 0);
        FUNC2(FUNC7(bus, NULL, "/value/a") >= 0);

        FUNC2(FUNC14(bus) >= 0);

        FUNC3("Entering event loop on server");

        while (!c->quit) {
                FUNC3("Loop!");

                r = FUNC11(bus, NULL);
                if (r < 0) {
                        FUNC4(r, "Failed to process requests: %m");
                        goto fail;
                }

                if (r == 0) {
                        r = FUNC16(bus, (uint64_t) -1);
                        if (r < 0) {
                                FUNC4(r, "Failed to wait: %m");
                                goto fail;
                        }

                        continue;
                }
        }

        r = 0;

fail:
        if (bus) {
                FUNC9(bus);
                FUNC15(bus);
        }

        return FUNC0(r);
}