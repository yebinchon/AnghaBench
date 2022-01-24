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
struct TYPE_2__ {int /*<<< orphan*/  dialog; } ;

/* Variables and functions */
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ pdf ; 
 int /*<<< orphan*/  pdf_filter ; 
 int /*<<< orphan*/  save_pdf_dialog ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	if (pdf)
	{
		FUNC0();
		FUNC1(filename, pdf_filter);
		ui.dialog = save_pdf_dialog;
	}
}