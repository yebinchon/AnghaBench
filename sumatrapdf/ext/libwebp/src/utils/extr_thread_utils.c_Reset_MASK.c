#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  condition_; int /*<<< orphan*/  mutex_; int /*<<< orphan*/  thread_; } ;
typedef  TYPE_1__ WebPWorkerImpl ;
struct TYPE_8__ {scalar_t__ status_; int /*<<< orphan*/ * impl_; scalar_t__ had_error; } ;
typedef  TYPE_2__ WebPWorker ;

/* Variables and functions */
 scalar_t__ OK ; 
 int FUNC0 (TYPE_2__* const) ; 
 int /*<<< orphan*/  ThreadLoop ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(WebPWorker* const worker) {
  int ok = 1;
  worker->had_error = 0;
  if (worker->status_ < OK) {
#ifdef WEBP_USE_THREAD
    WebPWorkerImpl* const impl =
        (WebPWorkerImpl*)WebPSafeCalloc(1, sizeof(WebPWorkerImpl));
    worker->impl_ = (void*)impl;
    if (worker->impl_ == NULL) {
      return 0;
    }
    if (pthread_mutex_init(&impl->mutex_, NULL)) {
      goto Error;
    }
    if (pthread_cond_init(&impl->condition_, NULL)) {
      pthread_mutex_destroy(&impl->mutex_);
      goto Error;
    }
    pthread_mutex_lock(&impl->mutex_);
    ok = !pthread_create(&impl->thread_, NULL, ThreadLoop, worker);
    if (ok) worker->status_ = OK;
    pthread_mutex_unlock(&impl->mutex_);
    if (!ok) {
      pthread_mutex_destroy(&impl->mutex_);
      pthread_cond_destroy(&impl->condition_);
 Error:
      WebPSafeFree(impl);
      worker->impl_ = NULL;
      return 0;
    }
#else
    worker->status_ = OK;
#endif
  } else if (worker->status_ > OK) {
    ok = FUNC0(worker);
  }
  FUNC3(!ok || (worker->status_ == OK));
  return ok;
}