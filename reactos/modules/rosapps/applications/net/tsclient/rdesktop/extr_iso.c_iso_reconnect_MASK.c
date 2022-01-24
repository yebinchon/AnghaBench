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
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ ISO_PDU_CC ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

BOOL
FUNC5(RDPCLIENT * This, char *server, char *cookie)
{
	uint8 code = 0;

	if (!FUNC3(This, server))
		return False;

	if (!FUNC2(This, cookie)) // BUGBUG should we really pass the cookie here?
		return False;

	if (FUNC1(This, &code, NULL) == NULL)
		return False;

	if (code != ISO_PDU_CC)
	{
		FUNC0("expected CC, got 0x%x\n", code);
		FUNC4(This);
		return False;
	}

	return True;
}