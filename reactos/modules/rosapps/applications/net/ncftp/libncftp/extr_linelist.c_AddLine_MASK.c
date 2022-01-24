#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nLines; TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__* LineListPtr ;
typedef  int /*<<< orphan*/  Line ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

LinePtr
FUNC3(LineListPtr list, const char *buf1)
{
	LinePtr lp;
	char *buf;

	lp = (LinePtr) FUNC2(sizeof(Line));
	if (lp != NULL) {
		buf = FUNC0(buf1);
		if (buf == NULL) {
			FUNC1(lp);
			lp = NULL;
		} else {
			lp->line = buf;
			lp->next = NULL;
			if (list->first == NULL) {
				list->first = list->last = lp;
				lp->prev = NULL;
				list->nLines = 1;
			} else {
				lp->prev = list->last;
				list->last->next = lp;
				list->last = lp;
				list->nLines++;
			}
		}
	}
	return lp;
}