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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  callout_cnd ; 
 int /*<<< orphan*/  callout_mtx ; 
 int /*<<< orphan*/ * callout_queue ; 
 int /*<<< orphan*/  callout_thread ; 
 int /*<<< orphan*/  callout_thread_func ; 
 int initialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timebase_info ; 
 int work ; 

void FUNC5(void) {
  if (initialized) {
    return;
  }

  FUNC1(&timebase_info);
  
  if (FUNC4(&callout_mtx, NULL)) {
    FUNC0();
  }
  
  if (FUNC2(&callout_cnd, NULL)) {
    FUNC0();
  }
  
  callout_queue = NULL;
  work = false;
  
  if (FUNC3(&callout_thread, /*&attr*/ NULL, &callout_thread_func,
    NULL))
  {
    FUNC0();
  }
  
  initialized = true;
}