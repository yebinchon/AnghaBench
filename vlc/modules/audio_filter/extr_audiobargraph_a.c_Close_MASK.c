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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* first; } ;
typedef  TYPE_2__ filter_sys_t ;
typedef  TYPE_2__ ValueDate_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    filter_t * p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_object_t *vlc = FUNC0(FUNC3(p_filter));

    FUNC2(vlc, "audiobargraph_v-i_values");
    FUNC2(vlc, "audiobargraph_v-alarm");

    while (p_sys->first != NULL) {
        ValueDate_t *current = p_sys->first;
        p_sys->first = p_sys->first->next;
        FUNC1(current);
    }
    FUNC1(p_sys);
}