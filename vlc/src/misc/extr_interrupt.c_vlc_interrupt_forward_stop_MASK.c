#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ callback; void* const* data; } ;
typedef  TYPE_1__ vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ vlc_interrupt_forward_wake ; 

int FUNC2(void *const data[2])
{
    vlc_interrupt_t *from = data[1];
    if (from == NULL)
        return 0;

    FUNC0(from->callback == vlc_interrupt_forward_wake);
    FUNC0(from->data == data);
    return FUNC1(from);
}