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
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
#define  RDP_UPDATE_BITMAP 131 
#define  RDP_UPDATE_ORDERS 130 
#define  RDP_UPDATE_PALETTE 129 
#define  RDP_UPDATE_SYNCHRONIZE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, STREAM s)
{
	uint16 update_type, count;

	FUNC0(s, update_type);

	FUNC5(This);
	switch (update_type)
	{
		case RDP_UPDATE_ORDERS:
			FUNC1(s, 2);	/* pad */
			FUNC0(s, count);
			FUNC1(s, 2);	/* pad */
			FUNC3(This, s, count);
			break;

		case RDP_UPDATE_BITMAP:
			FUNC2(This, s);
			break;

		case RDP_UPDATE_PALETTE:
			FUNC4(This, s);
			break;

		case RDP_UPDATE_SYNCHRONIZE:
			break;

		default:
			FUNC7("update %d\n", update_type);
	}
	FUNC6(This);
}