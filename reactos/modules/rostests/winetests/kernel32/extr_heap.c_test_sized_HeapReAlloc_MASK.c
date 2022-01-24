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
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(int nbytes1, int nbytes2)
{
    BOOL success;
    char *buf = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, nbytes1);
    FUNC4(buf != NULL, "allocate failed\n");
    FUNC4(buf[0] == 0, "buffer not zeroed\n");
    buf = FUNC3(FUNC0(), HEAP_ZERO_MEMORY, buf, nbytes2);
    FUNC4(buf != NULL, "reallocate failed\n");
    FUNC4(buf[nbytes2-1] == 0, "buffer not zeroed\n");
    success = FUNC2(FUNC0(), 0, buf);
    FUNC4(success, "free failed\n");
}