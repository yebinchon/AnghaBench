#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_extmatch; } ;
typedef  TYPE_1__ stateitem_T ;
struct TYPE_5__ {int ga_len; scalar_t__ ga_data; } ;

/* Variables and functions */
 TYPE_2__ current_state ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2()
{
    int		i;
    stateitem_T	*sip;

    sip = (stateitem_T *)(current_state.ga_data);
    for (i = 0; i < current_state.ga_len; i++)
	FUNC1(sip[i].si_extmatch);
    FUNC0(&current_state);
}