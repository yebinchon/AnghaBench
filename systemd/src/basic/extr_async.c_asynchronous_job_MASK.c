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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void* (*func)(void *p), void *arg) {
        sigset_t ss, saved_ss;
        pthread_attr_t a;
        pthread_t t;
        int r, k;

        /* It kinda sucks that we have to resort to threads to implement an asynchronous close(), but well, such is
         * life. */

        r = FUNC2(&a);
        if (r > 0)
                return -r;

        r = FUNC3(&a, PTHREAD_CREATE_DETACHED);
        if (r > 0) {
                r = -r;
                goto finish;
        }

        FUNC0(FUNC6(&ss) >= 0);

        /* Block all signals before forking off the thread, so that the new thread is started with all signals
         * blocked. This way the existence of the new thread won't affect signal handling in other threads. */

        r = FUNC5(SIG_BLOCK, &ss, &saved_ss);
        if (r > 0) {
                r = -r;
                goto finish;
        }

        r = FUNC4(&t, &a, func, arg);

        k = FUNC5(SIG_SETMASK, &saved_ss, NULL);

        if (r > 0)
                r = -r;
        else if (k > 0)
                r = -k;
        else
                r = 0;

finish:
        FUNC1(&a);
        return r;
}