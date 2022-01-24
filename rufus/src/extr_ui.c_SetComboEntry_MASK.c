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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(HWND hDlg, int data)
{
	int i, nb_entries = FUNC0(hDlg);

	if (nb_entries <= 0)
		return;
	for (i = 0; i < nb_entries; i++) {
		if (FUNC1(hDlg, i) == data) {
			FUNC3(FUNC2(hDlg, i));
			return;
		}
	}
	if (i == nb_entries)
		FUNC3(FUNC2(hDlg, 0));
}