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
struct TYPE_5__ {int /*<<< orphan*/ * cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ Entry ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * sEmpty ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char) ; 

__attribute__((used)) static int FUNC3(const void* arg1, const void* arg2)
{
	const WIN32_FIND_DATAW* fd1 = &(*(const Entry* const*)arg1)->data;
	const WIN32_FIND_DATAW* fd2 = &(*(const Entry* const*)arg2)->data;
	const WCHAR *name1, *name2, *ext1, *ext2;

	int cmp = FUNC0(fd1, fd2);
	if (cmp)
		return cmp;

	name1 = fd1->cFileName;
	name2 = fd2->cFileName;

	ext1 = FUNC2(name1, '.');
	ext2 = FUNC2(name2, '.');

	if (ext1)
		ext1++;
	else
		ext1 = sEmpty;

	if (ext2)
		ext2++;
	else
		ext2 = sEmpty;

	cmp = FUNC1(ext1, ext2);
	if (cmp)
		return cmp;

	return FUNC1(name1, name2);
}