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
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int IO_DONE ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(p_socket ps, SA *addr, socklen_t len) {
    int err = IO_DONE;
    FUNC2(ps);
    if (FUNC1(*ps, addr, len) < 0) err = FUNC0();
    FUNC3(ps);
    return err;
}