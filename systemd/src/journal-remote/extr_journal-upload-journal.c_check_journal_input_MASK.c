#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  journal; scalar_t__ input_event; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int SD_JOURNAL_NOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(Uploader *u) {
        if (u->input_event) {
                int r;

                r = FUNC3(u->journal);
                if (r < 0) {
                        FUNC1(r, "Failed to process journal: %m");
                        FUNC0(u);
                        return r;
                }

                if (r == SD_JOURNAL_NOP)
                        return 0;
        }

        return FUNC2(u, 1);
}