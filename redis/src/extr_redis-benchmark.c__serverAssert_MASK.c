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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(const char *estr, const char *file, int line) {
    FUNC0(stderr, "=== ASSERTION FAILED ===");
    FUNC0(stderr, "==> %s:%d '%s' is not true",file,line,estr);
    *((char*)-1) = 'x';
}