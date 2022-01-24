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
struct TYPE_4__ {int /*<<< orphan*/  q_lock; scalar_t__ event_q; } ;
typedef  TYPE_1__ WTStatus ;

/* Variables and functions */
 int /*<<< orphan*/  free_event_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (WTStatus *status)
{
    if (status->event_q) {
        FUNC1 (status->event_q, free_event_cb, NULL);
        FUNC2 (status->event_q);
    }
    FUNC3 (&status->q_lock);
    FUNC0 (status);
}