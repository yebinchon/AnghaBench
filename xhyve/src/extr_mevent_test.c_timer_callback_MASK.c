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
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int TEVSZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * tevbuf ; 
 int /*<<< orphan*/  tevp ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int fd, enum ev_type type, void *param)
{
	static int i;

	if (i >= TEVSZ)
		FUNC0();

	tevbuf[i++] = FUNC2();

	if (i == TEVSZ) {
		FUNC1(tevp);
		FUNC3();
	}
}