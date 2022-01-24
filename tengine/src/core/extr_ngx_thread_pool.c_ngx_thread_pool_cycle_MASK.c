#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  id; int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ ngx_thread_task_t ;
struct TYPE_5__ {TYPE_2__* first; TYPE_2__** last; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  log; int /*<<< orphan*/  mtx; TYPE_1__ queue; int /*<<< orphan*/  cond; int /*<<< orphan*/  waiting; } ;
typedef  TYPE_3__ ngx_thread_pool_t ;
struct TYPE_8__ {TYPE_2__** last; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ ngx_thread_pool_done ; 
 int /*<<< orphan*/  ngx_thread_pool_done_lock ; 
 int /*<<< orphan*/  ngx_thread_pool_handler ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC15(void *data)
{
    ngx_thread_pool_t *tp = data;

    int                 err;
    sigset_t            set;
    ngx_thread_task_t  *task;

#if 0
    ngx_time_update();
#endif

    FUNC0(NGX_LOG_DEBUG_CORE, tp->log, 0,
                   "thread in pool \"%V\" started", &tp->name);

    FUNC13(&set);

    FUNC12(&set, SIGILL);
    FUNC12(&set, SIGFPE);
    FUNC12(&set, SIGSEGV);
    FUNC12(&set, SIGBUS);

    err = FUNC11(SIG_BLOCK, &set, NULL);
    if (err) {
        FUNC2(NGX_LOG_ALERT, tp->log, err, "pthread_sigmask() failed");
        return NULL;
    }

    for ( ;; ) {
        if (FUNC7(&tp->mtx, tp->log) != NGX_OK) {
            return NULL;
        }

        /* the number may become negative */
        tp->waiting--;

        while (tp->queue.first == NULL) {
            if (FUNC6(&tp->cond, &tp->mtx, tp->log)
                != NGX_OK)
            {
                (void) FUNC8(&tp->mtx, tp->log);
                return NULL;
            }
        }

        task = tp->queue.first;
        tp->queue.first = task->next;

        if (tp->queue.first == NULL) {
            tp->queue.last = &tp->queue.first;
        }

        if (FUNC8(&tp->mtx, tp->log) != NGX_OK) {
            return NULL;
        }

#if 0
        ngx_time_update();
#endif

        FUNC1(NGX_LOG_DEBUG_CORE, tp->log, 0,
                       "run task #%ui in thread pool \"%V\"",
                       task->id, &tp->name);

        task->handler(task->ctx, tp->log);

        FUNC1(NGX_LOG_DEBUG_CORE, tp->log, 0,
                       "complete task #%ui in thread pool \"%V\"",
                       task->id, &tp->name);

        task->next = NULL;

        FUNC5(&ngx_thread_pool_done_lock, 1, 2048);

        *ngx_thread_pool_done.last = task;
        ngx_thread_pool_done.last = &task->next;

        FUNC3();

        FUNC10(&ngx_thread_pool_done_lock);

        (void) FUNC4(ngx_thread_pool_handler);
    }
}