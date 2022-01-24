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
struct TYPE_5__ {scalar_t__ storage; int /*<<< orphan*/  deferred_closes; int /*<<< orphan*/  user_journals; scalar_t__ system_journal; scalar_t__ runtime_journal; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ STORAGE_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__ (*) (scalar_t__)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__ (*) (scalar_t__)) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(Server *s) {
        FUNC0(s);

        if (s->storage == STORAGE_NONE)
                return 0;

        if (s->runtime_journal && !s->system_journal)
                return 0;

        FUNC2("Relinquishing /var...");

        (void) FUNC6(s, false, true);

        s->system_journal = FUNC1(s->system_journal);
        FUNC4(s->user_journals, journal_file_close);
        FUNC5(s->deferred_closes, journal_file_close);

        if (FUNC7("/run/systemd/journal/flushed") < 0 && errno != ENOENT)
                FUNC3(errno, "Failed to unlink /run/systemd/journal/flushed, ignoring: %m");

        return 0;
}