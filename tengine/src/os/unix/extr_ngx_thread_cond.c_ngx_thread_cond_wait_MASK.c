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
typedef  int /*<<< orphan*/  ngx_thread_mutex_t ;
typedef  int /*<<< orphan*/  ngx_thread_cond_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  scalar_t__ ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC3(ngx_thread_cond_t *cond, ngx_thread_mutex_t *mtx,
    ngx_log_t *log)
{
    ngx_err_t  err;

    err = FUNC2(cond, mtx);

#if 0
    ngx_time_update();
#endif

    if (err == 0) {
        return NGX_OK;
    }

    FUNC0(NGX_LOG_ALERT, log, err, "pthread_cond_wait() failed");

    return NGX_ERROR;
}