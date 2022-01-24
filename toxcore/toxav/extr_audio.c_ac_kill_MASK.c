#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  j_buf; int /*<<< orphan*/  decoder; int /*<<< orphan*/  encoder; } ;
typedef  TYPE_1__ ACSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(ACSession *ac)
{
    if (!ac)
        return;

    FUNC4(ac->encoder);
    FUNC3(ac->decoder);
    FUNC2(ac->j_buf);

    FUNC5(ac->queue_mutex);

    FUNC0("Terminated audio handler: %p", ac);
    FUNC1(ac);
}