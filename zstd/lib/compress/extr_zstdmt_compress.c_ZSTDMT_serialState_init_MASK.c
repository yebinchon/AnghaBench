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
struct TYPE_4__ {int /*<<< orphan*/  ldmWindowCond; int /*<<< orphan*/  ldmWindowMutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ serialState_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(serialState_t* serialState)
{
    int initError = 0;
    FUNC2(serialState, 0, sizeof(*serialState));
    initError |= FUNC1(&serialState->mutex, NULL);
    initError |= FUNC0(&serialState->cond, NULL);
    initError |= FUNC1(&serialState->ldmWindowMutex, NULL);
    initError |= FUNC0(&serialState->ldmWindowCond, NULL);
    return initError;
}