#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
struct TYPE_12__ {scalar_t__ AceCount; } ;
struct TYPE_9__ {scalar_t__ AceType; } ;
struct TYPE_11__ {int /*<<< orphan*/  AccessMask; TYPE_1__ Header; } ;
typedef  TYPE_3__ ROS_ACE ;
typedef  scalar_t__ PSID ;
typedef  TYPE_4__* PACL ;
typedef  int NTSTATUS ;
typedef  char* LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ACCESS_ALLOWED_ACE_TYPE ; 
 scalar_t__ ACCESS_DENIED_ACE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(PACL pAcl)
{
	DWORD i;
	NTSTATUS status;

	if ( ! pAcl )
	{
		FUNC4("\nNo Default Dacl.\n");
		return;
	}

	FUNC4("\nDacl:\n");
	for (i = 0; i < pAcl->AceCount; i++)
	{
		UNICODE_STRING scSid;
		ROS_ACE* pAce;
		LPWSTR wszType = 0;
		PSID pSid;

		status = FUNC3(pAcl, i, (ROS_ACE**) &pAce);
		if ( ! FUNC1(status) )
		{
			FUNC4("RtlGetAce(): status = 0x%08x\n", status);
			break;
		}

		pSid = (PSID) (pAce + 1);
		if ( pAce->Header.AceType == ACCESS_ALLOWED_ACE_TYPE )
			wszType = L"allow";
		if ( pAce->Header.AceType == ACCESS_DENIED_ACE_TYPE )
			wszType = L"deny ";

		status = FUNC2(&scSid, pSid, TRUE);
		if ( ! FUNC1(status) )
		{
			FUNC4("RtlConvertSidToUnicodeString(): status = 0x%08x\n", status);
			break;
		}

		FUNC4("%d.) %S %wZ 0x%08x\n", i, wszType, &scSid, pAce->AccessMask);
		FUNC0(scSid.Buffer);
	}
}