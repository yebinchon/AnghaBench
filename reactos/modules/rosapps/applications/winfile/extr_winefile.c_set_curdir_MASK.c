#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_12__ {TYPE_3__* cur; TYPE_3__* root; } ;
struct TYPE_11__ {TYPE_3__* cur; } ;
struct TYPE_14__ {scalar_t__ hwnd; int /*<<< orphan*/  path; TYPE_2__ right; TYPE_1__ left; } ;
struct TYPE_13__ {int /*<<< orphan*/  scanned; struct TYPE_13__* down; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ Entry ;
typedef  TYPE_4__ ChildWnd ;

/* Variables and functions */
 int MAX_PATH ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(ChildWnd* child, Entry* entry, int idx, HWND hwnd)
{
	WCHAR path[MAX_PATH];

	if (!entry)
		return;

	path[0] = '\0';

	child->left.cur = entry;

	child->right.root = entry->down? entry->down: entry;
	child->right.cur = entry;

	if (!entry->scanned)
		FUNC5(child, entry, idx, hwnd);
	else
		FUNC4(child);

	FUNC2(entry, path);
	FUNC3(child->path, path);

	if (child->hwnd)	/* only change window title, if the window already exists */
		FUNC1(child->hwnd, path);

	if (path[0])
		if (FUNC0(path))
			FUNC6();
}