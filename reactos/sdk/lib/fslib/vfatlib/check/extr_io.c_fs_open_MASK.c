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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  changes ; 
 scalar_t__ did_change ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/ * last ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(char *path, int rw)
{
    if ((fd = FUNC1(path, rw ? O_RDWR : O_RDONLY)) < 0) {
	FUNC2("open");
	FUNC0(6);
    }
    changes = *(last = NULL);
    did_change = 0;
}