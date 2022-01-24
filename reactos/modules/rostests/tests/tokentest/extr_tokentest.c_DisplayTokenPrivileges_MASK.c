#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_6__ {size_t PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_5__ {int Attributes; TYPE_3__ Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,size_t*) ; 
 int SE_PRIVILEGE_ENABLED ; 
 int SE_PRIVILEGE_ENABLED_BY_DEFAULT ; 
 int SE_PRIVILEGE_USED_FOR_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(TOKEN_PRIVILEGES* pPriv)
{
	WCHAR buffer[256];
	DWORD i;

	FUNC1("\nprivileges:\n");
	for (i = 0; i < pPriv->PrivilegeCount; i++)
	{
		DWORD cbName = sizeof(buffer) / sizeof(buffer[0]);
		FUNC0(0, &pPriv->Privileges[i].Luid, buffer, &cbName);

		FUNC1("%S{0x%08x, 0x%08x} [", buffer, pPriv->Privileges[i].Luid.HighPart, pPriv->Privileges[i].Luid.LowPart);

		if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_ENABLED )
			FUNC1("enabled,");
		if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_ENABLED_BY_DEFAULT )
			FUNC1("default,");
		if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_USED_FOR_ACCESS )
			FUNC1("used");

		FUNC1("]\n");
	}
}