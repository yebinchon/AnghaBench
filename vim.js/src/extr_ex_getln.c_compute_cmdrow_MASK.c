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
struct TYPE_4__ {scalar_t__ w_height; } ;

/* Variables and functions */
 scalar_t__ Rows ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ cmdline_row ; 
 scalar_t__ exmode_active ; 
 TYPE_1__* lastwin ; 
 scalar_t__ msg_scrolled ; 

void
FUNC2()
{
    if (exmode_active || msg_scrolled != 0)
	cmdline_row = Rows - 1;
    else
	cmdline_row = FUNC1(lastwin) + lastwin->w_height
						   + FUNC0(lastwin);
}