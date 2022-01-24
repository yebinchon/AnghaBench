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
typedef  int uint8 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int MCS_CJCF ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC5(RDPCLIENT * This)
{
	uint8 opcode, result;
	STREAM s;

	s = FUNC3(This, NULL);
	if (s == NULL)
		return False;

	FUNC1(s, opcode);
	if ((opcode >> 2) != MCS_CJCF)
	{
		FUNC0("expected CJcf, got %d\n", opcode);
		return False;
	}

	FUNC1(s, result);
	if (result != 0)
	{
		FUNC0("CJrq: %d\n", result);
		return False;
	}

	FUNC2(s, 4);	/* mcs_userid, req_chanid */
	if (opcode & 2)
		FUNC2(s, 2);	/* join_chanid */

	return FUNC4(s);
}