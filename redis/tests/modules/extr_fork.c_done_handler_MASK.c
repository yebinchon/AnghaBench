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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int child_pid ; 
 int exitted_with_code ; 

void FUNC2(int exitcode, int bysignal, void *user_data) {
    child_pid = -1;
    exitted_with_code = exitcode;
    FUNC1(user_data==(void*)0xdeadbeef);
    FUNC0(bysignal);
}