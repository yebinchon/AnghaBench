#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  dht; } ;

/* Variables and functions */
 int FIRST_FLAG ; 
 int MAP_ANONYMOUS ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int SECOND_FLAG ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  child_got_request ; 
 int /*<<< orphan*/  child_got_statuschange ; 
 int /*<<< orphan*/  child_id ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* m ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_confirm_message ; 
 int /*<<< orphan*/  parent_confirm_status ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_id ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int request_flags ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(int argc, char *argv[])
{
    FUNC17("=========== FRIENDS_TEST ===========");

    /* set up the global memory */
    parent_id = FUNC13(NULL, crypto_box_PUBLICKEYBYTES, PROT_READ | PROT_WRITE,
                     MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    child_id = FUNC13(NULL, crypto_box_PUBLICKEYBYTES, PROT_READ | PROT_WRITE,
                    MAP_SHARED | MAP_ANONYMOUS, -1, 0);

    FUNC6("friends_test: Starting test...\n", stdout);

    if ((child_pid = FUNC5()) == 0) {
        /* child */
        int i = 0;
        char *message = "Y-yes Mr. Watson?";

        m = FUNC7();

        FUNC0(m, child_id);
        FUNC14(child_id, crypto_box_PUBLICKEYBYTES, MS_SYNC);

        FUNC10(m, child_got_request, NULL);
        FUNC11(m, child_got_statuschange, NULL);

        /* wait on the friend request */
        while (!(request_flags & FIRST_FLAG))
            FUNC4(m->dht);

        /* wait for the status change */
        while (!(request_flags & SECOND_FLAG))
            FUNC4(m->dht);

        for (i = 0; i < 6; i++) {
            /* send the message six times, just to be sure */
            FUNC12(m, 0, (uint8_t *)message, FUNC18(message));
            FUNC4(m->dht);
        }

        FUNC3(m);

        return 0;
    }

    /* parent */
    if (FUNC1(cleanup) != 0) {
        FUNC6("friends_test: atexit() failed!\nFailing build...\n", stderr);
        FUNC8(child_pid, SIGKILL);
        return -1;
    }

    m = FUNC7();

    FUNC14(parent_id, crypto_box_PUBLICKEYBYTES, MS_SYNC);
    FUNC11(m, parent_confirm_status, NULL);
    FUNC9(m, parent_confirm_message, NULL);

    /* hacky way to give the child time to set up */
    FUNC2(50);

    FUNC0(m, parent_id);

    if (FUNC15(m->dht) == -1)
        return -1;

    if (FUNC16(m->dht) == -1)
        return -1;

    FUNC19(NULL);
    FUNC6("friends_test: Build passed!\n", stdout);
    return 0;
}