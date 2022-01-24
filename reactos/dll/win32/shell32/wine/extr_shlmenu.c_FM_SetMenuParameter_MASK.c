#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_4__ {int /*<<< orphan*/  lpfnCallback; void* uEnumFlags; void* uFlags; int /*<<< orphan*/  pidl; void* uID; } ;
typedef  int /*<<< orphan*/  LPFNFMCALLBACK ;
typedef  TYPE_1__* LPFMINFO ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static LPFMINFO FUNC4(
	HMENU hmenu,
	UINT uID,
	LPCITEMIDLIST pidl,
	UINT uFlags,
	UINT uEnumFlags,
	LPFNFMCALLBACK lpfnCallback)
{
	LPFMINFO	menudata;

	FUNC3("\n");

	menudata = FUNC0(hmenu);

	FUNC2(menudata->pidl);

	menudata->uID = uID;
	menudata->pidl = FUNC1(pidl);
	menudata->uFlags = uFlags;
	menudata->uEnumFlags = uEnumFlags;
	menudata->lpfnCallback = lpfnCallback;

	return menudata;
}