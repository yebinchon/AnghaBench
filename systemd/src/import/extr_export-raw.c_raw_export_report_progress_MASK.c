#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {scalar_t__ st_size; } ;
struct TYPE_6__ {int written_uncompressed; unsigned int last_percent; int /*<<< orphan*/  progress_ratelimit; TYPE_1__ st; } ;
typedef  TYPE_2__ RawExport ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC5(RawExport *e) {
        unsigned percent;
        FUNC1(e);

        if (e->written_uncompressed >= (uint64_t) e->st.st_size)
                percent = 100;
        else
                percent = (unsigned) ((e->written_uncompressed * FUNC0(100)) / (uint64_t) e->st.st_size);

        if (percent == e->last_percent)
                return;

        if (!FUNC3(&e->progress_ratelimit))
                return;

        FUNC4(false, "X_IMPORT_PROGRESS=%u", percent);
        FUNC2("Exported %u%%.", percent);

        e->last_percent = percent;
}