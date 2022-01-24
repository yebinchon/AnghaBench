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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char**) ; 
 char* FUNC2 (scalar_t__,char*) ; 

int FUNC3(pid_t pid, char **root) {
        const char *p;

        FUNC0(pid >= 0);

        p = FUNC2(pid, "root");

        return FUNC1(p, root);
}