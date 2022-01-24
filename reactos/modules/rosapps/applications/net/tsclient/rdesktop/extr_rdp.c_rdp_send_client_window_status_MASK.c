#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int current_status; } ;
struct TYPE_7__ {TYPE_1__ rdp; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  RDP_DATA_PDU_CLIENT_WINDOW_STATUS ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

BOOL
FUNC5(RDPCLIENT * This, int status)
{
	STREAM s;

	if (This->rdp.current_status == status)
		return True;

	s = FUNC2(This, 12);

	if(s == NULL)
		return False;

	FUNC1(s, status);

	switch (status)
	{
		case 0:	/* shut the server up */
			break;

		case 1:	/* receive data again */
			FUNC1(s, 0);	/* unknown */
			FUNC0(s, This->width);
			FUNC0(s, This->height);
			break;
	}

	FUNC4(s);
	This->rdp.current_status = status;
	return FUNC3(This, s, RDP_DATA_PDU_CLIENT_WINDOW_STATUS);
}