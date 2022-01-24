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
 char* REDIS_VERSION ; 
 char* ZMALLOC_LIB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char*,int,unsigned long long) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 () ; 

void FUNC6(void) {
    FUNC2("Redis server v=%s sha=%s:%d malloc=%s bits=%d build=%llx\n",
        REDIS_VERSION,
        FUNC5(),
        FUNC0(FUNC4()) > 0,
        ZMALLOC_LIB,
        sizeof(long) == 4 ? 32 : 64,
        (unsigned long long) FUNC3());
    FUNC1(0);
}