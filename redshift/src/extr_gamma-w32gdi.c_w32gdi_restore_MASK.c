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
struct TYPE_3__ {int /*<<< orphan*/  saved_ramps; } ;
typedef  TYPE_1__ w32gdi_state_t ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(w32gdi_state_t *state)
{
	/* Open device context */
	HDC hDC = FUNC0(NULL);
	if (hDC == NULL) {
		FUNC4(FUNC3("Unable to open device context.\n"), stderr);
		return;
	}

	/* Restore gamma ramps */
	BOOL r = FALSE;
	for (int i = 0; i < MAX_ATTEMPTS && !r; i++) {
		/* We retry a few times before giving up because some
		   buggy drivers fail on the first invocation of
		   SetDeviceGammaRamp just to succeed on the second. */
		r = FUNC2(hDC, state->saved_ramps);
	}
	if (!r) FUNC4(FUNC3("Unable to restore gamma ramps.\n"), stderr);

	/* Release device context */
	FUNC1(NULL, hDC);
}