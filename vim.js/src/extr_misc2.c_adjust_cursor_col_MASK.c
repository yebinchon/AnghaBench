#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 scalar_t__ NUL ; 
 int /*<<< orphan*/  VIsual_active ; 
 TYPE_2__* curwin ; 
 scalar_t__ FUNC0 () ; 
 char* p_sel ; 

void
FUNC1()
{
    if (curwin->w_cursor.col > 0
# ifdef FEAT_VISUAL
	    && (!VIsual_active || *p_sel == 'o')
# endif
	    && FUNC0() == NUL)
	--curwin->w_cursor.col;
}