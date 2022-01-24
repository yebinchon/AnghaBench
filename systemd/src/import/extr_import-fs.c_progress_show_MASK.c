#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int started; int logged_incomplete; scalar_t__ size; int /*<<< orphan*/  path; int /*<<< orphan*/  limit; } ;
typedef  TYPE_1__ ProgressInfo ;

/* Variables and functions */
 int FORMAT_BYTES_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ProgressInfo *p) {
        FUNC0(p);

        /* Show progress only every now and then. */
        if (!FUNC4(&p->limit))
                return;

        /* Suppress the first message, start with the second one */
        if (!p->started) {
                p->started = true;
                return;
        }

        /* Mention the list is incomplete before showing first output. */
        if (!p->logged_incomplete) {
                FUNC3("(Note, file list shown below is incomplete, and is intended as sporadic progress report only.)");
                p->logged_incomplete = true;
        }

        if (p->size == 0)
                FUNC2("Copying tree, currently at '%s'...", p->path);
        else {
                char buffer[FORMAT_BYTES_MAX];

                FUNC2("Copying tree, currently at '%s' (@%s)...", p->path, FUNC1(buffer, sizeof(buffer), p->size));
        }
}