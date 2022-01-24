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
struct TYPE_4__ {int locked; int /*<<< orphan*/  mutex; int /*<<< orphan*/  contention; int /*<<< orphan*/  dynamic; } ;
typedef  TYPE_1__ vlc_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  super_mutex ; 
 int /*<<< orphan*/  super_variable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4 (vlc_mutex_t *p_mutex)
{
    if (!p_mutex->dynamic)
    {   /* static mutexes */
        FUNC0(&super_mutex);
        while (p_mutex->locked)
        {
            p_mutex->contention++;
            FUNC2(&super_variable, &super_mutex, INFINITE);
            p_mutex->contention--;
        }
        p_mutex->locked = true;
        FUNC1(&super_mutex);
    }
    else
        FUNC0 (&p_mutex->mutex);

    FUNC3(p_mutex);
}