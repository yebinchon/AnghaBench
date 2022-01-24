#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t GroupCount; int /*<<< orphan*/ * Groups; } ;
struct TYPE_5__ {int /*<<< orphan*/  User; } ;
typedef  TYPE_1__ TOKEN_USER ;
typedef  int /*<<< orphan*/  TOKEN_PRIMARY_GROUP ;
typedef  int /*<<< orphan*/  TOKEN_OWNER ;
typedef  TYPE_2__ TOKEN_GROUPS ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(TOKEN_USER* pUser,
				 TOKEN_GROUPS* pGroups,
				 TOKEN_OWNER* pOwner,
				 TOKEN_PRIMARY_GROUP* pPrimary)
{
	DWORD i;

	FUNC1("\nSids:\n");
	FUNC0(&pUser->User, pOwner, pPrimary);
	FUNC1("\nGroups:\n");
	for (i = 0; i < pGroups->GroupCount; i++)
		FUNC0(&pGroups->Groups[i], pOwner, pPrimary);
}