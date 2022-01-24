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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(time_t delay_time)
{
    MSG msg;
    time_t end;

    /* The message pump uses PeekMessage() to empty the queue and then
     * sleeps for 50ms before retrying the queue. */
    end = FUNC4(NULL) + delay_time;
    while (FUNC4(NULL) < end) {
      if (FUNC1(&msg, NULL, 0, 0, PM_REMOVE)) {
        FUNC3(&msg);
        FUNC0(&msg);
      } else {
        FUNC2(50);
      }
    }
}