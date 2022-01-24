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
typedef  int pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        int r;
        pid_t pid;

        r = FUNC1("100", &pid);
        FUNC0(r == 0);
        FUNC0(pid == 100);

        r = FUNC1("0x7FFFFFFF", &pid);
        FUNC0(r == 0);
        FUNC0(pid == 2147483647);

        pid = 65; /* pid is left unchanged on ERANGE. Set to known arbitrary value. */
        r = FUNC1("0", &pid);
        FUNC0(r == -ERANGE);
        FUNC0(pid == 65);

        pid = 65; /* pid is left unchanged on ERANGE. Set to known arbitrary value. */
        r = FUNC1("-100", &pid);
        FUNC0(r == -ERANGE);
        FUNC0(pid == 65);

        pid = 65; /* pid is left unchanged on ERANGE. Set to known arbitrary value. */
        r = FUNC1("0xFFFFFFFFFFFFFFFFF", &pid);
        FUNC0(r == -ERANGE);
        FUNC0(pid == 65);

        r = FUNC1("junk", &pid);
        FUNC0(r == -EINVAL);

        r = FUNC1("", &pid);
        FUNC0(r == -EINVAL);
}