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
 int /*<<< orphan*/  CAT_FLAGS_MAIN_FILE_OPTIONAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {
        FUNC2(FUNC3("/no/such/file", NULL, 0) == -ENOENT);
        FUNC2(FUNC3("/no/such/file", NULL, CAT_FLAGS_MAIN_FILE_OPTIONAL) == 0);

        if (FUNC1("/etc/fstab", R_OK) >= 0)
                FUNC2(FUNC3("/etc/fstab", FUNC0("/etc/fstab", "/etc/fstab"), 0) == 0);
}