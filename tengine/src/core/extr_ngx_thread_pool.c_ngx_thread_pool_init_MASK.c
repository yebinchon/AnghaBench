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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_4__ {scalar_t__ threads; int /*<<< orphan*/ * log; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cond; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ngx_thread_pool_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  PTHREAD_STACK_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * ngx_notify ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_thread_pool_cycle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_thread_pool_t *tp, ngx_log_t *log, ngx_pool_t *pool)
{
    int             err;
    pthread_t       tid;
    ngx_uint_t      n;
    pthread_attr_t  attr;

    if (ngx_notify == NULL) {
        FUNC0(NGX_LOG_ALERT, log, 0,
               "the configured event method cannot be used with thread pools");
        return NGX_ERROR;
    }

    FUNC4(&tp->queue);

    if (FUNC2(&tp->mtx, log) != NGX_OK) {
        return NGX_ERROR;
    }

    if (FUNC1(&tp->cond, log) != NGX_OK) {
        (void) FUNC3(&tp->mtx, log);
        return NGX_ERROR;
    }

    tp->log = log;

    err = FUNC6(&attr);
    if (err) {
        FUNC0(NGX_LOG_ALERT, log, err,
                      "pthread_attr_init() failed");
        return NGX_ERROR;
    }

    err = FUNC7(&attr, PTHREAD_CREATE_DETACHED);
    if (err) {
        FUNC0(NGX_LOG_ALERT, log, err,
                      "pthread_attr_setdetachstate() failed");
        return NGX_ERROR;
    }

#if 0
    err = pthread_attr_setstacksize(&attr, PTHREAD_STACK_MIN);
    if (err) {
        ngx_log_error(NGX_LOG_ALERT, log, err,
                      "pthread_attr_setstacksize() failed");
        return NGX_ERROR;
    }
#endif

    for (n = 0; n < tp->threads; n++) {
        err = FUNC9(&tid, &attr, ngx_thread_pool_cycle, tp);
        if (err) {
            FUNC0(NGX_LOG_ALERT, log, err,
                          "pthread_create() failed");
            return NGX_ERROR;
        }
    }

    (void) FUNC5(&attr);

    return NGX_OK;
}