#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* path; int /*<<< orphan*/  metrics; } ;
struct TYPE_8__ {int storage; int seal; TYPE_4__ runtime_storage; scalar_t__ runtime_journal; scalar_t__ system_journal; TYPE_4__ system_storage; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EROFS ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  STORAGE_AUTO ; 
 scalar_t__ STORAGE_NONE ; 
 scalar_t__ STORAGE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int FUNC8 (TYPE_1__*,int,char const*,int,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 char* FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(Server *s, bool flush_requested, bool relinquish_requested) {
        const char *fn;
        int r = 0;

        if (!s->system_journal &&
            FUNC0(s->storage, STORAGE_PERSISTENT, STORAGE_AUTO) &&
            (flush_requested || FUNC2()) &&
            !relinquish_requested) {

                /* If in auto mode: first try to create the machine
                 * path, but not the prefix.
                 *
                 * If in persistent mode: create /var/log/journal and
                 * the machine path */

                if (s->storage == STORAGE_PERSISTENT)
                        (void) FUNC6("/var/log/journal/", 0755);

                (void) FUNC5(s->system_storage.path, 0755);

                fn = FUNC12(s->system_storage.path, "/system.journal");
                r = FUNC8(s, true, fn, O_RDWR|O_CREAT, s->seal, &s->system_storage.metrics, &s->system_journal);
                if (r >= 0) {
                        FUNC10(s->system_journal, 0);
                        (void) FUNC1(s, &s->system_storage);
                        FUNC9(&s->system_storage);
                } else {
                        if (!FUNC0(r, -ENOENT, -EROFS))
                                FUNC4(r, "Failed to open system journal: %m");

                        r = 0;
                }

                /* If the runtime journal is open, and we're post-flush, we're
                 * recovering from a failed system journal rotate (ENOSPC)
                 * for which the runtime journal was reopened.
                 *
                 * Perform an implicit flush to var, leaving the runtime
                 * journal closed, now that the system journal is back.
                 */
                if (!flush_requested)
                        (void) FUNC11(s, true);
        }

        if (!s->runtime_journal &&
            (s->storage != STORAGE_NONE)) {

                fn = FUNC12(s->runtime_storage.path, "/system.journal");

                if (s->system_journal && !relinquish_requested) {

                        /* Try to open the runtime journal, but only
                         * if it already exists, so that we can flush
                         * it into the system journal */

                        r = FUNC8(s, false, fn, O_RDWR, false, &s->runtime_storage.metrics, &s->runtime_journal);
                        if (r < 0) {
                                if (r != -ENOENT)
                                        FUNC4(r, "Failed to open runtime journal: %m");

                                r = 0;
                        }

                } else {

                        /* OK, we really need the runtime journal, so create
                         * it if necessary. */

                        (void) FUNC5("/run/log", 0755);
                        (void) FUNC5("/run/log/journal", 0755);
                        (void) FUNC7(fn, 0750);

                        r = FUNC8(s, true, fn, O_RDWR|O_CREAT, false, &s->runtime_storage.metrics, &s->runtime_journal);
                        if (r < 0)
                                return FUNC3(r, "Failed to open runtime journal: %m");
                }

                if (s->runtime_journal) {
                        FUNC10(s->runtime_journal, 0);
                        (void) FUNC1(s, &s->runtime_storage);
                        FUNC9(&s->runtime_storage);
                }
        }

        return r;
}