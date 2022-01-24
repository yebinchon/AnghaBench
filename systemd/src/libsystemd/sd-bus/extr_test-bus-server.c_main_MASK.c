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
 int EPERM ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int) ; 

int FUNC2(int argc, char *argv[]) {
        int r;

        r = FUNC1(true, true, false, false);
        FUNC0(r >= 0);

        r = FUNC1(true, false, false, false);
        FUNC0(r >= 0);

        r = FUNC1(false, true, false, false);
        FUNC0(r >= 0);

        r = FUNC1(false, false, false, false);
        FUNC0(r >= 0);

        r = FUNC1(true, true, true, true);
        FUNC0(r >= 0);

        r = FUNC1(true, true, false, true);
        FUNC0(r >= 0);

        r = FUNC1(true, true, true, false);
        FUNC0(r == -EPERM);

        return EXIT_SUCCESS;
}