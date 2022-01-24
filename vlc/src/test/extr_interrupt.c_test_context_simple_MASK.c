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
typedef  int /*<<< orphan*/  vlc_interrupt_t ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * fds ; 
 int /*<<< orphan*/  interrupt_callback ; 
 int /*<<< orphan*/  sem ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC15(vlc_interrupt_t *ctx)
{
    vlc_interrupt_t *octx;
    char c;

    FUNC4(ctx);
    octx = FUNC4(NULL);
    FUNC0(octx == ctx);
    octx = FUNC4(ctx);
    FUNC0(octx == NULL);
    octx = FUNC4(ctx);
    FUNC0(octx == ctx);

    FUNC3(interrupt_callback, &sem);
    FUNC2(ctx);
    FUNC11(&sem);
    FUNC5();

    /* BIG FAT WARNING: This is only meant to test the vlc_cond_wait_i11e()
     * function. This is NOT a good example of how to use the function in
     * normal code. */
    FUNC10(&sem);
    FUNC0(FUNC12(&sem) == 0);

    FUNC2(ctx);
    FUNC0(FUNC12(&sem) == EINTR);

    FUNC10(&sem);
    FUNC2(ctx);
    FUNC0(FUNC12(&sem) == EINTR);
    FUNC0(FUNC12(&sem) == 0);

    FUNC2(ctx);
    FUNC10(&sem);
    FUNC0(FUNC12(&sem) == EINTR);
    FUNC0(FUNC12(&sem) == 0);

    FUNC0(FUNC6(1) == 0);
    FUNC2(ctx);
    FUNC0(FUNC6(CLOCK_FREQ * 10000000) == EINTR);

    FUNC0(FUNC7(NULL, 0, 1) == 0);
    FUNC2(ctx);
    FUNC0(FUNC7(NULL, 0, 1000000000) == -1);
    FUNC0(errno == EINTR);

    c = 12;
    FUNC0(FUNC14(fds[0], &c, 1) == 1);
    c = 0;
    FUNC0(FUNC8(fds[1], &c, 1) == 1 && c == 12);
    FUNC2(ctx);
    FUNC0(FUNC8(fds[1], &c, 1) == -1);
    FUNC0(errno == EINTR);

    c = 42;
    FUNC0(FUNC13(fds[0], &c, 1, 0, NULL, 0) == 1);
    c = 0;
    FUNC0(FUNC9(fds[1], &c, 1, 0, NULL, 0) == 1 && c == 42);
    FUNC2(ctx);
    FUNC0(FUNC9(fds[1], &c, 1, 0, NULL, 0) == -1);
    FUNC0(errno == EINTR);

    FUNC2(ctx);
    FUNC0(FUNC1(fds[1], NULL, NULL, true) < 0);

    octx = FUNC4(NULL);
    FUNC0(octx == ctx);
    octx = FUNC4(NULL);
    FUNC0(octx == NULL);
}