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
struct TYPE_6__ {int pagenum; int /*<<< orphan*/  stop; int /*<<< orphan*/  render; int /*<<< orphan*/  solo; int /*<<< orphan*/  filename; int /*<<< orphan*/  interptime; int /*<<< orphan*/  ctx; int /*<<< orphan*/  status; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ bgprint ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	fz_cookie cookie = { 0 };
	int pagenum;

	(void)arg;

	do
	{
		FUNC0(("BGPrint waiting\n"));
		FUNC4(&bgprint.start);
		pagenum = bgprint.pagenum;
		FUNC0(("BGPrint woken for pagenum %d\n", pagenum));
		if (pagenum >= 0)
		{
			int start = FUNC1();
			FUNC2(&cookie, 0, sizeof(cookie));
			bgprint.status = FUNC5(bgprint.ctx, pagenum, &cookie, start, bgprint.interptime, bgprint.filename, 1, bgprint.solo, &bgprint.render);
		}
		FUNC0(("BGPrint completed page %d\n", pagenum));
		FUNC3(&bgprint.stop);
	}
	while (pagenum >= 0);
}