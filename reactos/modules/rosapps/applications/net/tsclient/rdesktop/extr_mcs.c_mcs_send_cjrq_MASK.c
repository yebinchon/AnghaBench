#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_5__ {int /*<<< orphan*/  mcs_userid; } ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int MCS_CJRQ ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC6(RDPCLIENT * This, uint16 chanid)
{
	STREAM s;

	FUNC0(("Sending CJRQ for channel #%d\n", chanid));

	s = FUNC1(This, 5);

	if(s == NULL)
		return False;

	FUNC4(s, (MCS_CJRQ << 2));
	FUNC3(s, This->mcs_userid);
	FUNC3(s, chanid);

	FUNC5(s);
	return FUNC2(This, s);
}