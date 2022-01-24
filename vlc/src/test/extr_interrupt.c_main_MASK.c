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
typedef  int /*<<< orphan*/  vlc_thread_t ;
typedef  int /*<<< orphan*/  vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * fds ; 
 int /*<<< orphan*/  sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_thread_cancel ; 
 int /*<<< orphan*/  test_thread_cleanup ; 
 int /*<<< orphan*/  test_thread_simple ; 
 int /*<<< orphan*/  unreachable_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC9 (void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC21 (void)
{
    vlc_interrupt_t *ctx;
    vlc_thread_t th;

    FUNC0(2);

    ctx = FUNC6();
    FUNC1(ctx != NULL);
    FUNC7(ctx);

    FUNC17(&sem, 0);
    ctx = FUNC6();
    FUNC1(ctx != NULL);

    FUNC1(FUNC20(PF_LOCAL, SOCK_STREAM, 0, fds, false) == 0);

    FUNC2(ctx);

    FUNC1(!FUNC4(&th, test_thread_simple, ctx, VLC_THREAD_PRIORITY_LOW));
    FUNC10(ctx);
    FUNC18(&sem);
    FUNC18(&sem);
    FUNC13(th, NULL);

    FUNC1(!FUNC4(&th, test_thread_cleanup, ctx, VLC_THREAD_PRIORITY_LOW));
    FUNC13(th, NULL);

    FUNC1(!FUNC4(&th, test_thread_cancel, ctx, VLC_THREAD_PRIORITY_LOW));
    FUNC3(th);
    FUNC13(th, NULL);

    FUNC7(ctx);

    /* Tests without interrupt context */
    FUNC18(&sem);
    FUNC1(FUNC19(&sem) == 0);
    FUNC1(FUNC14(1) == 0);
    FUNC1(FUNC15(NULL, 0, 1) == 0);

    FUNC11(unreachable_callback, NULL);
    FUNC12();

    void *data[2];
    FUNC8(ctx, data);
    FUNC1(FUNC9(data) == 0);

    FUNC5(fds[1]);
    FUNC5(fds[0]);
    FUNC16(&sem);
    return 0;
}