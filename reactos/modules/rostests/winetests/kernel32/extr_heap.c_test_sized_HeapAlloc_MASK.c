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
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(int nbytes)
{
    BOOL success;
    char *buf = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, nbytes);
    FUNC3(buf != NULL, "allocate failed\n");
    FUNC3(buf[0] == 0, "buffer not zeroed\n");
    success = FUNC2(FUNC0(), 0, buf);
    FUNC3(success, "free failed\n");
}