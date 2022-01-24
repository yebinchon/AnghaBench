#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int filelen; int /*<<< orphan*/  buffer; scalar_t__ flags; } ;
struct TYPE_5__ {TYPE_1__ rdat; int /*<<< orphan*/ * rd; int /*<<< orphan*/  icy; } ;
typedef  TYPE_2__ mpg123_handle ;

/* Variables and functions */
 int /*<<< orphan*/  bad_reader ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(mpg123_handle *mh)
{
	FUNC2("open_bad");
#ifndef NO_ICY
	FUNC1(&mh->icy);
#endif
	mh->rd = &bad_reader;
	mh->rdat.flags = 0;
#ifndef NO_FEEDER
	FUNC0(&mh->rdat.buffer);
#endif
	mh->rdat.filelen = -1;
}