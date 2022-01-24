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
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ fz_cookie ;
typedef  int /*<<< orphan*/  cookie ;
struct TYPE_6__ {int pagenum; int /*<<< orphan*/  stop; int /*<<< orphan*/  seps; int /*<<< orphan*/  filename; int /*<<< orphan*/  interptime; int /*<<< orphan*/  list; int /*<<< orphan*/  page; int /*<<< orphan*/  ctx; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ bgprint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	fz_cookie cookie = { 0 };
	int pagenum;

	(void)arg;

	do
	{
		FUNC0(("BGPrint waiting\n"));
		FUNC5(&bgprint.start);
		pagenum = bgprint.pagenum;
		FUNC0(("BGPrint woken for pagenum %d\n", pagenum));
		if (pagenum >= 0)
		{
			int start = FUNC2();
			FUNC3(&cookie, 0, sizeof(cookie));
			FUNC1(bgprint.ctx, bgprint.page, bgprint.list, pagenum, &cookie, start, bgprint.interptime, bgprint.filename, 1, bgprint.seps);
		}
		FUNC0(("BGPrint completed page %d\n", pagenum));
		FUNC4(&bgprint.stop);
	}
	while (pagenum >= 0);
}