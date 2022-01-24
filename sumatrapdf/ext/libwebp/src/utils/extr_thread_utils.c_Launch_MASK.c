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
typedef  int /*<<< orphan*/  WebPWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  WORK ; 

__attribute__((used)) static void FUNC2(WebPWorker* const worker) {
#ifdef WEBP_USE_THREAD
  ChangeState(worker, WORK);
#else
  FUNC1(worker);
#endif
}