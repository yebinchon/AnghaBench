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
 int /*<<< orphan*/  FUNC0 (char*,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 

__attribute__((used)) static char *FUNC4(char *buf, double t, double tza)
{
	char dbuf[20], tbuf[20];
	if (!FUNC2(t))
		return "Invalid Date";
	FUNC0(dbuf, t);
	FUNC1(tbuf, t, tza);
	FUNC3(buf, "%sT%s", dbuf, tbuf);
	return buf;
}