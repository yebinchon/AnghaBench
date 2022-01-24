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
struct TYPE_4__ {int /*<<< orphan*/ * lname; int /*<<< orphan*/ * rname; int /*<<< orphan*/  relname; } ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  TYPE_1__ FileInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(FileInfoListPtr dst, char *rfile)
{
	FileInfo newfi;

	FUNC1(&newfi);	/* Use defaults. */
	newfi.relname = FUNC2(rfile);
	newfi.rname = NULL;
	newfi.lname = NULL;

	if (FUNC0(dst, &newfi) == NULL)
		return (-1);
	return (0);
}