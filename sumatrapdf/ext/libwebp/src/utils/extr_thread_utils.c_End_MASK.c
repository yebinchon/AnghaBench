#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  condition_; int /*<<< orphan*/  mutex_; int /*<<< orphan*/  thread_; } ;
typedef  TYPE_1__ WebPWorkerImpl ;
struct TYPE_7__ {scalar_t__ status_; int /*<<< orphan*/ * impl_; } ;
typedef  TYPE_2__ WebPWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,scalar_t__) ; 
 scalar_t__ NOT_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(WebPWorker* const worker) {
#ifdef WEBP_USE_THREAD
  if (worker->impl_ != NULL) {
    WebPWorkerImpl* const impl = (WebPWorkerImpl*)worker->impl_;
    ChangeState(worker, NOT_OK);
    pthread_join(impl->thread_, NULL);
    pthread_mutex_destroy(&impl->mutex_);
    pthread_cond_destroy(&impl->condition_);
    WebPSafeFree(impl);
    worker->impl_ = NULL;
  }
#else
  worker->status_ = NOT_OK;
  FUNC2(worker->impl_ == NULL);
#endif
  FUNC2(worker->status_ == NOT_OK);
}