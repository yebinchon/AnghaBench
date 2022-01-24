#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_12__ {scalar_t__ use_rdp5; int /*<<< orphan*/  rdp_shareid; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  RDP_CTL_COOPERATE ; 
 int /*<<< orphan*/  RDP_CTL_REQUEST_CONTROL ; 
 int /*<<< orphan*/  RDP_INPUT_SYNCHRONIZE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static BOOL
FUNC13(RDPCLIENT * This, STREAM s)
{
	uint8 type;
	uint16 len_src_descriptor, len_combined_caps;

	FUNC2(s, This->rdp_shareid);
	FUNC1(s, len_src_descriptor);
	FUNC1(s, len_combined_caps);
	FUNC3(s, len_src_descriptor);

	FUNC0(("DEMAND_ACTIVE(id=0x%x)\n", This->rdp_shareid));
	FUNC5(This, s, len_combined_caps);

	if
	(
		!FUNC7(This) ||
		!FUNC11(This) ||
		!FUNC8(This, RDP_CTL_COOPERATE) ||
		!FUNC8(This, RDP_CTL_REQUEST_CONTROL) ||
		!FUNC6(This, &type) ||	/* RDP_PDU_SYNCHRONIZE */
		!FUNC6(This, &type) ||	/* RDP_CTL_COOPERATE */
		!FUNC6(This, &type) ||	/* RDP_CTL_GRANT_CONTROL */
		!FUNC10(This, 0, RDP_INPUT_SYNCHRONIZE, 0,
				   /*This->numlock_sync ? ui_get_numlock_state(This, read_keyboard_state(This)) :*/ 0, 0) // TODO: keyboard mess
	)
		return False;

	if (This->use_rdp5)
	{
		if(!FUNC4(This) || !FUNC9(This, 3))
			return False;
	}
	else
	{
		if(!FUNC9(This, 1) || !FUNC9(This, 2))
			return False;
	}

	if(!FUNC6(This, &type))	/* RDP_PDU_UNKNOWN 0x28 (Fonts?) */
		return False;

	FUNC12(This);
	return True;
}