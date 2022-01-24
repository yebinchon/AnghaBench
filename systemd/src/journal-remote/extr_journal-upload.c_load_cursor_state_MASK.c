#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  last_cursor; int /*<<< orphan*/  state_file; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Uploader *u) {
        int r;

        if (!u->state_file)
                return 0;

        r = FUNC2(NULL, u->state_file, "LAST_CURSOR", &u->last_cursor);
        if (r == -ENOENT)
                FUNC0("State file %s is not present.", u->state_file);
        else if (r < 0)
                return FUNC1(r, "Failed to read state file %s: %m",
                                       u->state_file);
        else
                FUNC0("Last cursor was %s", u->last_cursor);

        return 0;
}