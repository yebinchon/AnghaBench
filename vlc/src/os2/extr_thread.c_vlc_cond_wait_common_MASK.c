#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_mutex_t ;
struct TYPE_3__ {scalar_t__ hev; int /*<<< orphan*/  hevAck; int /*<<< orphan*/  waiters; int /*<<< orphan*/  signaled; } ;
typedef  TYPE_1__ vlc_cond_t ;
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 scalar_t__ ERROR_INTERRUPT ; 
 int ETIMEDOUT ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ NULLHANDLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10 (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                                 ULONG ulTimeout)
{
    ULONG ulPost;
    ULONG rc;

    FUNC5(p_condvar->hev != NULLHANDLE);

    do
    {
        FUNC9();

        FUNC4 (&p_condvar->waiters);

        FUNC8 (p_mutex);

        do
        {
            rc = FUNC6( p_condvar->hev, ulTimeout );
            if (rc == NO_ERROR)
                FUNC1 (p_condvar->hev, &ulPost);
        } while (rc == NO_ERROR &&
                 FUNC2 (&p_condvar->signaled, 0, 1) == 0);

        FUNC3 (&p_condvar->waiters);

        FUNC0 (p_condvar->hevAck);

        FUNC7 (p_mutex);
    } while( rc == ERROR_INTERRUPT );

    return rc ? ETIMEDOUT : 0;
}