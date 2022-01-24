#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_widget ;
struct TYPE_6__ {int /*<<< orphan*/  dialog; int /*<<< orphan*/ * focus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_dialog ; 
 int /*<<< orphan*/  tx_input ; 
 TYPE_1__* tx_widget ; 
 TYPE_2__ ui ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(pdf_widget *widget)
{
	FUNC1(&tx_input, FUNC0(ctx, widget->obj));
	ui.focus = &tx_input;
	ui.dialog = tx_dialog;
	tx_widget = widget;
}