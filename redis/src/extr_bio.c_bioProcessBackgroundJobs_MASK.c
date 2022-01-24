#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio_job {scalar_t__ arg3; scalar_t__ arg2; scalar_t__ arg1; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {struct bio_job* value; } ;
typedef  TYPE_1__ listNode ;

/* Variables and functions */
 unsigned long BIO_AOF_FSYNC ; 
 unsigned long BIO_CLOSE_FILE ; 
 unsigned long BIO_LAZY_FREE ; 
 unsigned long BIO_NUM_OPS ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/ * bio_jobs ; 
 int /*<<< orphan*/ * bio_mutex ; 
 int /*<<< orphan*/ * bio_newjob_cond ; 
 int /*<<< orphan*/ * bio_pending ; 
 int /*<<< orphan*/ * bio_step_cond ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct bio_job*) ; 

void *FUNC21(void *arg) {
    struct bio_job *job;
    unsigned long type = (unsigned long) arg;
    sigset_t sigset;

    /* Check that the type is within the right interval. */
    if (type >= BIO_NUM_OPS) {
        FUNC15(LL_WARNING,
            "Warning: bio thread started with wrong type %lu",type);
        return NULL;
    }

    /* Make the thread killable at any time, so that bioKillThreads()
     * can work reliably. */
    FUNC11(PTHREAD_CANCEL_ENABLE, NULL);
    FUNC12(PTHREAD_CANCEL_ASYNCHRONOUS, NULL);

    FUNC9(&bio_mutex[type]);
    /* Block SIGALRM so we are sure that only the main thread will
     * receive the watchdog signal. */
    FUNC18(&sigset);
    FUNC17(&sigset, SIGALRM);
    if (FUNC13(SIG_BLOCK, &sigset, NULL))
        FUNC15(LL_WARNING,
            "Warning: can't mask SIGALRM in bio.c thread: %s", FUNC19(errno));

    while(1) {
        listNode *ln;

        /* The loop always starts with the lock hold. */
        if (FUNC6(bio_jobs[type]) == 0) {
            FUNC8(&bio_newjob_cond[type],&bio_mutex[type]);
            continue;
        }
        /* Pop the job from the queue. */
        ln = FUNC5(bio_jobs[type]);
        job = ln->value;
        /* It is now possible to unlock the background system as we know have
         * a stand alone job structure to process.*/
        FUNC10(&bio_mutex[type]);

        /* Process the job accordingly to its type. */
        if (type == BIO_CLOSE_FILE) {
            FUNC0((long)job->arg1);
        } else if (type == BIO_AOF_FSYNC) {
            FUNC14((long)job->arg1);
        } else if (type == BIO_LAZY_FREE) {
            /* What we free changes depending on what arguments are set:
             * arg1 -> free the object at pointer.
             * arg2 & arg3 -> free two dictionaries (a Redis DB).
             * only arg3 -> free the skiplist. */
            if (job->arg1)
                FUNC2(job->arg1);
            else if (job->arg2 && job->arg3)
                FUNC1(job->arg2,job->arg3);
            else if (job->arg3)
                FUNC3(job->arg3);
        } else {
            FUNC16("Wrong job type in bioProcessBackgroundJobs().");
        }
        FUNC20(job);

        /* Lock again before reiterating the loop, if there are no longer
         * jobs to process we'll block again in pthread_cond_wait(). */
        FUNC9(&bio_mutex[type]);
        FUNC4(bio_jobs[type],ln);
        bio_pending[type]--;

        /* Unblock threads blocked on bioWaitStepOfType() if any. */
        FUNC7(&bio_step_cond[type]);
    }
}