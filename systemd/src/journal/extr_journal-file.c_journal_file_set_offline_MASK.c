#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_11__ {scalar_t__ fd; int /*<<< orphan*/  offline_state; int /*<<< orphan*/  offline_thread; TYPE_1__* header; int /*<<< orphan*/  writable; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_2__ JournalFile ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  OFFLINE_JOINED ; 
 int /*<<< orphan*/  OFFLINE_SYNCING ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  journal_file_set_offline_thread ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(JournalFile *f, bool wait) {
        bool restarted;
        int r;

        FUNC0(f);

        if (!f->writable)
                return -EPERM;

        if (f->fd < 0 || !f->header)
                return -EINVAL;

        /* An offlining journal is implicitly online and may modify f->header->state,
         * we must also join any potentially lingering offline thread when not online. */
        if (!FUNC2(f) && f->header->state != STATE_ONLINE)
                return FUNC4(f);

        /* Restart an in-flight offline thread and wait if needed, or join a lingering done one. */
        restarted = FUNC5(f);
        if ((restarted && wait) || !restarted) {
                r = FUNC4(f);
                if (r < 0)
                        return r;
        }

        if (restarted)
                return 0;

        /* Initiate a new offline. */
        f->offline_state = OFFLINE_SYNCING;

        if (wait) /* Without using a thread if waiting. */
                FUNC3(f);
        else {
                sigset_t ss, saved_ss;
                int k;

                FUNC1(FUNC9(&ss) >= 0);
                /* Don't block SIGBUS since the offlining thread accesses a memory mapped file.
                 * Asynchronous SIGBUS signals can safely be handled by either thread. */
                FUNC1(FUNC8(&ss, SIGBUS) >= 0);

                r = FUNC7(SIG_BLOCK, &ss, &saved_ss);
                if (r > 0)
                        return -r;

                r = FUNC6(&f->offline_thread, NULL, journal_file_set_offline_thread, f);

                k = FUNC7(SIG_SETMASK, &saved_ss, NULL);
                if (r > 0) {
                        f->offline_state = OFFLINE_JOINED;
                        return -r;
                }
                if (k > 0)
                        return -k;
        }

        return 0;
}