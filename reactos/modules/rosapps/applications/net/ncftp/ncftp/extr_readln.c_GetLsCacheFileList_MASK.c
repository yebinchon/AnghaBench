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
struct TYPE_2__ {int /*<<< orphan*/  fil; } ;
typedef  int /*<<< orphan*/ * FileInfoListPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,char,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* gLsCache ; 

__attribute__((used)) static FileInfoListPtr
FUNC3(const char *const item)
{
	int ci;
	int sortBy;
	int sortOrder;
	FileInfoListPtr filp;

	ci = FUNC1(item);
	if (ci < 0) {
		/* This dir was not in the
		 * cache -- go get it.
		 */
		FUNC0(item, 'l', "", NULL);
		ci = FUNC1(item);
		if (ci < 0)
			return NULL;
	}

	sortBy = 'n';		/* Sort by filename. */
	sortOrder = 'a';	/* Sort in ascending order. */
	filp = &gLsCache[ci].fil;
	FUNC2(filp, sortBy, sortOrder);
	return filp;
}