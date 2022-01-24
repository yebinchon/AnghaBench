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
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_3__ {int flags; int /*<<< orphan*/ * var; int /*<<< orphan*/ * fullname; } ;

/* Variables and functions */
 int P_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* options ; 

void
FUNC2()
{
    int		opt_idx;

    for (opt_idx = 0; options[opt_idx].fullname != NULL; opt_idx++)
	if ((options[opt_idx].flags & P_STRING) && options[opt_idx].var != NULL)
	    FUNC0((char_u **)FUNC1(&(options[opt_idx])));
}