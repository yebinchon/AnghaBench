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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {

        FUNC1("/dev/null");
        FUNC1("/dev/zero");
        FUNC1("/dev/full");
        FUNC1("/dev/random");
        FUNC1("/dev/urandom");
        FUNC1("/dev/tty");

        if (FUNC0("/run/systemd/inaccessible/chr") > 0) {
                FUNC1("/run/systemd/inaccessible/chr");
                FUNC1("/run/systemd/inaccessible/blk");
        }
}