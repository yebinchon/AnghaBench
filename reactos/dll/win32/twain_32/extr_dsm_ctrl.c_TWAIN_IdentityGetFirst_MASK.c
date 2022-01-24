#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * pTW_IDENTITY ;
struct TYPE_2__ {int /*<<< orphan*/  identity; } ;
typedef  int /*<<< orphan*/  TW_UINT16 ;
typedef  int /*<<< orphan*/  TW_MEMREF ;

/* Variables and functions */
 scalar_t__ DSM_currentDevice ; 
 int /*<<< orphan*/  DSM_twCC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TWCC_NODS ; 
 int /*<<< orphan*/  TWRC_FAILURE ; 
 int /*<<< orphan*/  TWRC_SUCCESS ; 
 TYPE_1__* devices ; 
 int /*<<< orphan*/  nrdevices ; 
 int /*<<< orphan*/  FUNC1 () ; 

TW_UINT16 FUNC2 (pTW_IDENTITY pOrigin, TW_MEMREF pData)
{
	pTW_IDENTITY pSourceIdentity = (pTW_IDENTITY) pData;

	FUNC0 ("DG_CONTROL/DAT_IDENTITY/MSG_GETFIRST\n");
	FUNC1();
	if (!nrdevices) {
		FUNC0 ("no entries found.\n");
		DSM_twCC = TWCC_NODS;
		return TWRC_FAILURE;
	}
	DSM_currentDevice = 0;
	*pSourceIdentity = devices[DSM_currentDevice++].identity;
	return TWRC_SUCCESS;
}