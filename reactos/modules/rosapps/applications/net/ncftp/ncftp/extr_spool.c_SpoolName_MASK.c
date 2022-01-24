#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  dstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const,size_t) ; 
 scalar_t__ FUNC2 () ; 
 struct tm* FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

void
FUNC7(const char *const sdir, char *sp, size_t size, int flag, int serial, time_t when)
{
	char sname[64];
	char dstr[32];
	struct tm *ltp;

	if ((when == (time_t) 0) || (when == (time_t) -1))
		(void) FUNC6(&when);
	ltp = FUNC3(&when);
	if (ltp == NULL) {
		/* impossible */
		(void) FUNC1(dstr, "19700101-000000", size);
	} else {
		(void) FUNC5(dstr, sizeof(dstr), "%Y%m%d-%H%M%S", ltp);
	}
	(void) FUNC1(sp, sdir, size);
	(void) FUNC4(sname, "/%c-%010u-%04x-%s",
		flag,
		(unsigned int) FUNC2(),
		(serial % (16 * 16 * 16 * 16)),
		dstr
	);
	(void) FUNC0(sp, sname, size);
}