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
struct TYPE_4__ {int locked; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dynamic; } ;
typedef  TYPE_1__ vlc_mutex_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  super_mutex ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4 (vlc_mutex_t *p_mutex)
{
    int ret;

    if (!p_mutex->dynamic)
    {   /* static mutexes */
        FUNC0(&super_mutex);
        if (!p_mutex->locked)
        {
            p_mutex->locked = true;
            ret = 0;
        }
        else
            ret = EBUSY;
        FUNC1(&super_mutex);
    }
    else
        ret = FUNC2 (&p_mutex->mutex) ? 0 : EBUSY;

    if (ret == 0)
        FUNC3(p_mutex);

    return ret;
}