#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  limit; } ;
struct TYPE_13__ {int /*<<< orphan*/  n_max_files; } ;
struct TYPE_14__ {TYPE_10__ space; int /*<<< orphan*/  path; int /*<<< orphan*/  oldest_file_usec; int /*<<< orphan*/  max_retention_usec; TYPE_1__ metrics; } ;
typedef  TYPE_2__ Server ;
typedef  TYPE_2__ JournalStorage ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(Server *s, JournalStorage *storage, bool verbose) {

        int r;

        FUNC0(s);
        FUNC0(storage);

        (void) FUNC2(s, storage);

        if (verbose)
                FUNC5(s, storage);

        r = FUNC3(storage->path, storage->space.limit,
                                     storage->metrics.n_max_files, s->max_retention_usec,
                                     &s->oldest_file_usec, verbose);
        if (r < 0 && r != -ENOENT)
                FUNC4(r, "Failed to vacuum %s, ignoring: %m", storage->path);

        FUNC1(&storage->space);
}