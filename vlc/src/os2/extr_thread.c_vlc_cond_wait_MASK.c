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
typedef  int /*<<< orphan*/  vlc_mutex_t ;
struct TYPE_5__ {scalar_t__ hev; } ;
typedef  TYPE_1__ vlc_cond_t ;

/* Variables and functions */
 scalar_t__ NULLHANDLE ; 
 int /*<<< orphan*/  SEM_INDEFINITE_WAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex)
{
    if (p_condvar->hev == NULLHANDLE)
        FUNC1 (p_condvar);

    FUNC0 (p_condvar, p_mutex, SEM_INDEFINITE_WAIT);
}