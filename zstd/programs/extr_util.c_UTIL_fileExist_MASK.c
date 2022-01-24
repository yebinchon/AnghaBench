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
typedef  int /*<<< orphan*/  stat_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 

int FUNC2(const char* filename)
{
    stat_t statbuf;
#if defined(_MSC_VER)
    int const stat_error = _stat64(filename, &statbuf);
#else
    int const stat_error = FUNC1(filename, &statbuf);
#endif
    return !stat_error;
}