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
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int) ; 

__attribute__((used)) static char *FUNC5(char *buf, double t)
{
	int y = FUNC2(t);
	int m = FUNC1(t);
	int d = FUNC0(t);
	if (!FUNC3(t))
		return "Invalid Date";
	FUNC4(buf, "%04d-%02d-%02d", y, m+1, d);
	return buf;
}