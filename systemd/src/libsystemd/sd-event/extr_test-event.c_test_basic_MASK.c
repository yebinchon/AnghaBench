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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/ * FUNC0 (char) ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 scalar_t__ SIGRTMIN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int do_quit ; 
 int /*<<< orphan*/  exit_handler ; 
 int got_a ; 
 int got_b ; 
 int got_c ; 
 int got_d ; 
 int got_exit ; 
 int got_post ; 
 int got_unref ; 
 int /*<<< orphan*/  io_handler ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  post_handler ; 
 int /*<<< orphan*/  prepare_handler ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  time_handler ; 
 int /*<<< orphan*/  unref_handler ; 
 int FUNC22 (int,char const*,int) ; 

__attribute__((used)) static void FUNC23(void) {
        sd_event *e = NULL;
        sd_event_source *w = NULL, *x = NULL, *y = NULL, *z = NULL, *q = NULL, *t = NULL;
        static const char ch = 'x';
        int a[2] = { -1, -1 }, b[2] = { -1, -1}, d[2] = { -1, -1}, k[2] = { -1, -1 };
        uint64_t event_now;
        int64_t priority;

        FUNC1(FUNC2(a) >= 0);
        FUNC1(FUNC2(b) >= 0);
        FUNC1(FUNC2(d) >= 0);
        FUNC1(FUNC2(k) >= 0);

        FUNC1(FUNC9(&e) >= 0);
        FUNC1(FUNC11(e, CLOCK_MONOTONIC, &event_now) > 0);

        FUNC1(FUNC13(e, true) >= 0);

        /* Test whether we cleanly can destroy an io event source from its own handler */
        got_unref = false;
        FUNC1(FUNC5(e, &t, k[0], EPOLLIN, unref_handler, NULL) >= 0);
        FUNC1(FUNC22(k[1], &ch, 1) == 1);
        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);
        FUNC1(got_unref);

        got_a = false, got_b = false, got_c = false, got_d = 0;

        /* Add a oneshot handler, trigger it, reenable it, and trigger
         * it again. */
        FUNC1(FUNC5(e, &w, d[0], EPOLLIN, io_handler, FUNC0('d')) >= 0);
        FUNC1(FUNC15(w, SD_EVENT_ONESHOT) >= 0);
        FUNC1(FUNC22(d[1], &ch, 1) >= 0);
        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);
        FUNC1(got_d == 1);
        FUNC1(FUNC22(d[1], &ch, 1) >= 0);
        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);
        FUNC1(got_d == 2);

        FUNC1(FUNC5(e, &x, a[0], EPOLLIN, io_handler, FUNC0('a')) >= 0);
        FUNC1(FUNC5(e, &y, b[0], EPOLLIN, io_handler, FUNC0('b')) >= 0);
        FUNC1(FUNC8(e, &z, CLOCK_MONOTONIC, 0, 0, time_handler, FUNC0('c')) >= 0);
        FUNC1(FUNC4(e, &q, exit_handler, FUNC0('g')) >= 0);

        FUNC1(FUNC17(x, 99) >= 0);
        FUNC1(FUNC14(x, &priority) >= 0);
        FUNC1(priority == 99);
        FUNC1(FUNC15(y, SD_EVENT_ONESHOT) >= 0);
        FUNC1(FUNC16(x, prepare_handler) >= 0);
        FUNC1(FUNC17(z, 50) >= 0);
        FUNC1(FUNC15(z, SD_EVENT_ONESHOT) >= 0);
        FUNC1(FUNC16(z, prepare_handler) >= 0);

        /* Test for floating event sources */
        FUNC1(FUNC21(SIG_BLOCK, NULL, SIGRTMIN+1, -1) >= 0);
        FUNC1(FUNC7(e, NULL, SIGRTMIN+1, NULL, NULL) >= 0);

        FUNC1(FUNC22(a[1], &ch, 1) >= 0);
        FUNC1(FUNC22(b[1], &ch, 1) >= 0);

        FUNC1(!got_a && !got_b && !got_c);

        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);

        FUNC1(!got_a && got_b && !got_c);

        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);

        FUNC1(!got_a && got_b && got_c);

        FUNC1(FUNC12(e, (uint64_t) -1) >= 1);

        FUNC1(got_a && got_b && got_c);

        FUNC19(x);
        FUNC19(y);

        do_quit = true;
        FUNC1(FUNC6(e, NULL, post_handler, NULL) >= 0);
        FUNC1(FUNC11(e, CLOCK_MONOTONIC, &event_now) == 0);
        FUNC1(FUNC18(z, event_now + 200 * USEC_PER_MSEC) >= 0);
        FUNC1(FUNC15(z, SD_EVENT_ONESHOT) >= 0);

        FUNC1(FUNC10(e) >= 0);
        FUNC1(got_post);
        FUNC1(got_exit);

        FUNC19(z);
        FUNC19(q);

        FUNC19(w);

        FUNC20(e);

        FUNC3(a);
        FUNC3(b);
        FUNC3(d);
        FUNC3(k);
}