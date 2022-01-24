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
typedef  int /*<<< orphan*/  vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  vlc_interrupt_forward_wake ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/ * vlc_interrupt_var ; 

void FUNC2(vlc_interrupt_t *to, void *data[2])
{
    data[0] = data[1] = NULL;

    vlc_interrupt_t *from = vlc_interrupt_var;
    if (from == NULL)
        return;

    FUNC0(from != to);
    data[0] = to;
    data[1] = from;
    FUNC1(from, vlc_interrupt_forward_wake, data);
}