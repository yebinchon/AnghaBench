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
struct write_queue_item {int /*<<< orphan*/  file; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int WRITE_STRING_FILE_ATOMIC ; 
 int WRITE_STRING_FILE_CREATE ; 
 int WRITE_STRING_FILE_MKDIR_0755 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct write_queue_item *item) {
        int r;

        r = FUNC3(item->file, FUNC2(item->state), WRITE_STRING_FILE_CREATE|WRITE_STRING_FILE_ATOMIC|WRITE_STRING_FILE_MKDIR_0755);
        if (r < 0)
                return FUNC1(r, "Failed to write state file %s: %m", item->file);

        FUNC0("Saved state '%s' to %s.", FUNC2(item->state), item->file);
        return 0;
}