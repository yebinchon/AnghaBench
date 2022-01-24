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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 scalar_t__ BT_IMAGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SIZE ; 
 int /*<<< orphan*/  MSG_124 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  app_changed_size ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC5(uint64_t pos)
{
	char tmp[64];

	if ((boot_type == BT_IMAGE) && (pos != 0)) {
		FUNC2(TRUE);
		FUNC4(tmp, "%ld", (LONG)pos);
	} else {
		FUNC2(FALSE);
		FUNC4(tmp, "0 (%s)", FUNC3(MSG_124));
	}
	app_changed_size = TRUE;
	FUNC1(FUNC0(hMainDialog, IDC_PERSISTENCE_SIZE), tmp);
}