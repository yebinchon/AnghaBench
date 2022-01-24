#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ iDesktop; int /*<<< orphan*/  iMalloc; } ;
struct TYPE_5__ {scalar_t__ hicon; scalar_t__ folder; scalar_t__ pidl; } ;
typedef  scalar_t__ HICON ;
typedef  TYPE_1__ Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__ Globals ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(Entry* entry)
{
	if (entry->hicon && entry->hicon!=(HICON)-1)
		FUNC0(entry->hicon);

	if (entry->folder && entry->folder!=Globals.iDesktop)
		FUNC4(entry->folder);

	if (entry->pidl)
		FUNC3(Globals.iMalloc, entry->pidl);

	FUNC2(FUNC1(), 0, entry);
}