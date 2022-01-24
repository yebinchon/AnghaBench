#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nFileInfos; TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; } ;
typedef  TYPE_1__* FileInfoPtr ;
typedef  TYPE_2__* FileInfoListPtr ;
typedef  int /*<<< orphan*/  FileInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 

FileInfoPtr
FUNC2(FileInfoListPtr list, FileInfoPtr src)
{
	FileInfoPtr lp;

	lp = (FileInfoPtr) FUNC0(sizeof(FileInfo));
	if (lp != NULL) {
		(void) FUNC1(lp, src, sizeof(FileInfo));
		lp->next = NULL;
		if (list->first == NULL) {
			list->first = list->last = lp;
			lp->prev = NULL;
			list->nFileInfos = 1;
		} else {
			lp->prev = list->last;
			list->last->next = lp;
			list->last = lp;
			list->nFileInfos++;
		}
	}
	return lp;
}