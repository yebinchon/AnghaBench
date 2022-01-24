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
struct TYPE_12__ {unsigned int num_channels; scalar_t__ mcs_userid; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ MCS_GLOBAL_CHANNEL ; 
 scalar_t__ MCS_USERCHANNEL_BASE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

BOOL
FUNC9(RDPCLIENT * This, char *server, char * cookie, STREAM mcs_data)
{
	unsigned int i;

	if (!FUNC0(This, server, cookie))
		return False;

	if (!FUNC7(This, mcs_data) || !FUNC4(This, mcs_data))
		goto error;

	if (!FUNC8(This) || !FUNC5(This))
		goto error;

	if (!FUNC2(This, &This->mcs_userid))
		goto error;

	if (!FUNC6(This, This->mcs_userid + MCS_USERCHANNEL_BASE) || !FUNC3(This))
		goto error;

	if (!FUNC6(This, MCS_GLOBAL_CHANNEL) || !FUNC3(This))
		goto error;

	for (i = 0; i < This->num_channels; i++)
	{
		if (!FUNC6(This, MCS_GLOBAL_CHANNEL + 1 + i) || !FUNC3(This))
			goto error;
	}
	return True;

	error:
	FUNC1(This);
	return False;
}