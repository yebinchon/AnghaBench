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
struct TYPE_5__ {int /*<<< orphan*/  entry_state; int /*<<< orphan*/  journal; scalar_t__ uploading; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_CURSOR ; 
 int /*<<< orphan*/  journal_input_callback ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(Uploader *u, int skip) {
        int r;

        if (u->uploading)
                return 0;

        r = FUNC1(u->journal, skip);
        if (r < 0)
                return FUNC0(r, "Failed to skip to next entry: %m");
        else if (r < skip)
                return 0;

        /* have data */
        u->entry_state = ENTRY_CURSOR;
        return FUNC2(u, journal_input_callback, u);
}