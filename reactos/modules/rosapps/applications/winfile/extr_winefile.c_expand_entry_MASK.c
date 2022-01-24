#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  hwnd; } ;
struct TYPE_12__ {void* header_wdths_ok; TYPE_4__ left; } ;
struct TYPE_10__ {char* cFileName; int dwFileAttributes; } ;
struct TYPE_11__ {void* expanded; TYPE_1__ data; struct TYPE_11__* next; struct TYPE_11__* down; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ Entry ;
typedef  TYPE_3__ ChildWnd ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  LB_FINDSTRING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_ALL ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static BOOL FUNC4(ChildWnd* child, Entry* dir)
{
	int idx;
	Entry* p;

	if (!dir || dir->expanded || !dir->down)
		return FALSE;

	p = dir->down;

	if (p->data.cFileName[0]=='.' && p->data.cFileName[1]=='\0' && p->next) {
		p = p->next;

		if (p->data.cFileName[0]=='.' && p->data.cFileName[1]=='.' &&
				p->data.cFileName[2]=='\0' && p->next)
			p = p->next;
	}

	/* no subdirectories ? */
	if (!(p->data.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
		return FALSE;

	idx = FUNC0(child->left.hwnd, LB_FINDSTRING, 0, (LPARAM)dir);

	dir->expanded = TRUE;

	/* insert entries in left pane */
	FUNC2(&child->left, p, NULL, TF_ALL, idx);

	if (!child->header_wdths_ok) {
		if (FUNC1(&child->left, FALSE)) {
			FUNC3(&child->left);

			child->header_wdths_ok = TRUE;
		}
	}

	return TRUE;
}