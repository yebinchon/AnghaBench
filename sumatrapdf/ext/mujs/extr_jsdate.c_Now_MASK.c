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
struct timeval {double tv_sec; double tv_usec; } ;
struct _timeb {double time; double millitm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _timeb*) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double FUNC4(void)
{
#if defined(__unix__) || defined(__APPLE__)
	struct timeval tv;
	FUNC2(&tv, NULL);
	return FUNC1(tv.tv_sec * 1000.0 + tv.tv_usec / 1000.0);
#elif defined(_WIN32)
	struct _timeb tv;
	_ftime(&tv);
	return tv.time * 1000.0 + tv.millitm;
#else
	return time(NULL) * 1000.0;
#endif
}