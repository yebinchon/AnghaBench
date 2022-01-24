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
struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {void* plug; void* rlinkto; void* rname; void* lname; void* relname; struct TYPE_8__* next; } ;
typedef  TYPE_1__* FileInfoPtr ;
typedef  TYPE_2__* FileInfoListPtr ;
typedef  TYPE_1__ FileInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC1 (void*) ; 

int
FUNC2(FileInfoListPtr dst, FileInfoListPtr src)
{
	FileInfoPtr lp, lp2;
	FileInfo newfi;

	for (lp = src->first; lp != NULL; lp = lp2) {
		lp2 = lp->next;
		newfi = *lp;
		newfi.relname = FUNC1(lp->relname);
		newfi.lname = FUNC1(lp->lname);
		newfi.rname = FUNC1(lp->rname);
		newfi.rlinkto = FUNC1(lp->rlinkto);
		newfi.plug = FUNC1(lp->plug);
		if (FUNC0(dst, &newfi) == NULL)
			return (-1);
	}
	return (0);
}