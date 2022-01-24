#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  handler_id; int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ scrollbar_T ;
struct TYPE_5__ {int /*<<< orphan*/  formwin; } ;
typedef  int /*<<< orphan*/  GtkAdjustment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_CAN_FOCUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SBAR_HORIZ ; 
 int SBAR_VERT ; 
 int /*<<< orphan*/  adjustment_value_changed ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__ gui ; 
 int /*<<< orphan*/  FUNC11 () ; 

void
FUNC12(scrollbar_T *sb, int orient)
{
    if (orient == SBAR_HORIZ)
	sb->id = FUNC7(NULL);
    else if (orient == SBAR_VERT)
	sb->id = FUNC10(NULL);

    if (sb->id != NULL)
    {
	GtkAdjustment *adjustment;

	FUNC5(sb->id, GTK_CAN_FOCUS);
	FUNC6(FUNC1(gui.formwin), sb->id, 0, 0);

	adjustment = FUNC8(FUNC3(sb->id));

	sb->handler_id = FUNC9(
			     FUNC2(adjustment), "value_changed",
			     FUNC4(adjustment_value_changed),
			     FUNC0(sb->ident));
	FUNC11();
    }
}