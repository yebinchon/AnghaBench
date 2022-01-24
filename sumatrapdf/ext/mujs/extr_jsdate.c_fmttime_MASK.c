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

/* Variables and functions */
 int FUNC0 (double) ; 
 int FUNC1 (double) ; 
 int FUNC2 (double) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int,int,...) ; 

__attribute__((used)) static char *FUNC7(char *buf, double t, double tza)
{
	int H = FUNC0(t);
	int M = FUNC1(t);
	int S = FUNC2(t);
	int ms = FUNC5(t);
	int tzh = FUNC0(FUNC3(tza));
	int tzm = FUNC1(FUNC3(tza));
	if (!FUNC4(t))
		return "Invalid Date";
	if (tza == 0)
		FUNC6(buf, "%02d:%02d:%02d.%03dZ", H, M, S, ms);
	else if (tza < 0)
		FUNC6(buf, "%02d:%02d:%02d.%03d-%02d:%02d", H, M, S, ms, tzh, tzm);
	else
		FUNC6(buf, "%02d:%02d:%02d.%03d+%02d:%02d", H, M, S, ms, tzh, tzm);
	return buf;
}