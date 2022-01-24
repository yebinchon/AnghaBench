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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFREG ; 
 int WRITE_STRING_FILE_ATOMIC ; 
 int WRITE_STRING_FILE_CREATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*,int,struct timespec*) ; 

int FUNC3(const char *fn, const char *line, struct timespec *ts) {
        int r;

        r = FUNC1(fn, S_IFREG);
        if (r < 0)
                return r;

        r = FUNC2(fn, line, WRITE_STRING_FILE_CREATE|WRITE_STRING_FILE_ATOMIC, ts);

        FUNC0();

        return r;
}