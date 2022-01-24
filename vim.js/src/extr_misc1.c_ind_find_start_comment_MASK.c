#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pos_T ;
struct TYPE_2__ {int /*<<< orphan*/  b_ind_maxcomment; } ;

/* Variables and functions */
 TYPE_1__* curbuf ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pos_T *
FUNC1()	    /* XXX */
{
    return FUNC0(curbuf->b_ind_maxcomment);
}