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
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
#define  LICENCE_TAG_AUTHREQ 132 
#define  LICENCE_TAG_DEMAND 131 
#define  LICENCE_TAG_ISSUE 130 
#define  LICENCE_TAG_REISSUE 129 
#define  LICENCE_TAG_RESULT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(RDPCLIENT * This, STREAM s)
{
	uint8 tag;

	FUNC0(s, tag);
	FUNC1(s, 3);	/* version, length */

	switch (tag)
	{
		case LICENCE_TAG_DEMAND:
			FUNC3(This, s);
			break;

		case LICENCE_TAG_AUTHREQ:
			FUNC2(This, s);
			break;

		case LICENCE_TAG_ISSUE:
			FUNC4(This, s);
			break;

		case LICENCE_TAG_REISSUE:
		case LICENCE_TAG_RESULT:
			break;

		default:
			FUNC5("licence tag 0x%x\n", tag);
	}
}