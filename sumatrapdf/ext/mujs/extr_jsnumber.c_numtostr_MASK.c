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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,...) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(js_State *J, const char *fmt, int w, double n)
{
	/* buf needs to fit printf("%.20f", 1e20) */
	char buf[50], *e;
	FUNC2(buf, fmt, w, n);
	e = FUNC3(buf, 'e');
	if (e) {
		int exp = FUNC0(e+1);
		FUNC2(e, "e%+d", exp);
	}
	FUNC1(J, buf);
}