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
typedef  int uint64_t ;
struct TYPE_4__ {int quota_referenced; int written_uncompressed; unsigned int last_percent; int /*<<< orphan*/  progress_ratelimit; } ;
typedef  TYPE_1__ TarExport ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC5(TarExport *e) {
        unsigned percent;
        FUNC1(e);

        /* Do we have any quota info? If not, we don't know anything about the progress */
        if (e->quota_referenced == (uint64_t) -1)
                return;

        if (e->written_uncompressed >= e->quota_referenced)
                percent = 100;
        else
                percent = (unsigned) ((e->written_uncompressed * FUNC0(100)) / e->quota_referenced);

        if (percent == e->last_percent)
                return;

        if (!FUNC3(&e->progress_ratelimit))
                return;

        FUNC4(false, "X_IMPORT_PROGRESS=%u", percent);
        FUNC2("Exported %u%%.", percent);

        e->last_percent = percent;
}