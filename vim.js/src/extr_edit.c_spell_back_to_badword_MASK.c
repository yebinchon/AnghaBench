#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ col; } ;
typedef  TYPE_1__ pos_T ;
struct TYPE_6__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKWARD ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* curwin ; 
 int /*<<< orphan*/  spell_bad_len ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2()
{
    pos_T	tpos = curwin->w_cursor;

    spell_bad_len = FUNC0(curwin, BACKWARD, TRUE, TRUE, NULL);
    if (curwin->w_cursor.col != tpos.col)
	FUNC1(&tpos);
}