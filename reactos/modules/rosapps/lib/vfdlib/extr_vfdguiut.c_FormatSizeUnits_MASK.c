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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static PSTR FUNC3(ULONG size, PSTR buf)
{
	static const char *name[3] = {
		" KB", " MB", " GB"
	};
	int unit;
	double dsize;

	if (size < 1000) {
#ifndef __REACTOS__
		FUNC1(buf, "%u", size);
#else
		sprintf(buf, "%lu", size);
#endif
		return buf;
	}

	dsize = size;
	dsize /= 1024;
	unit = 0;

	while (unit < 2 && dsize >= 1000) {
		dsize /= 1000;
		unit++;
	}

	if (dsize < 10) {
		FUNC1(buf, "%3.2f%s", dsize, name[unit]);
	}
	else if (dsize < 100) {
		FUNC1(buf, "%3.1f%s", dsize, name[unit]);
	}
	else if (dsize < 1000) {
		FUNC1(buf, "%3.0f%s", dsize, name[unit]);
	}
	else {
		FUNC0((ULONG)dsize, buf);
		FUNC2(buf, name[unit]);
	}

	return buf;
}