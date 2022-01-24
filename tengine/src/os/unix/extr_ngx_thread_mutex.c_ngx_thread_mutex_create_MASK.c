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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  ngx_thread_mutex_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  scalar_t__ ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_ERRORCHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC5(ngx_thread_mutex_t *mtx, ngx_log_t *log)
{
    ngx_err_t            err;
    pthread_mutexattr_t  attr;

    err = FUNC3(&attr);
    if (err != 0) {
        FUNC0(NGX_LOG_EMERG, log, err,
                      "pthread_mutexattr_init() failed");
        return NGX_ERROR;
    }

    err = FUNC4(&attr, PTHREAD_MUTEX_ERRORCHECK);
    if (err != 0) {
        FUNC0(NGX_LOG_EMERG, log, err,
                      "pthread_mutexattr_settype"
                      "(PTHREAD_MUTEX_ERRORCHECK) failed");
        return NGX_ERROR;
    }

    err = FUNC1(mtx, &attr);
    if (err != 0) {
        FUNC0(NGX_LOG_EMERG, log, err,
                      "pthread_mutex_init() failed");
        return NGX_ERROR;
    }

    err = FUNC2(&attr);
    if (err != 0) {
        FUNC0(NGX_LOG_ALERT, log, err,
                      "pthread_mutexattr_destroy() failed");
    }

    return NGX_OK;
}