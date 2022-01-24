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
struct TYPE_5__ {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {int written_compressed; unsigned int last_percent; int /*<<< orphan*/  progress_ratelimit; TYPE_1__ st; } ;
typedef  TYPE_2__ RawImport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC6(RawImport *i) {
        unsigned percent;
        FUNC2(i);

        /* We have no size information, unless the source is a regular file */
        if (!FUNC0(i->st.st_mode))
                return;

        if (i->written_compressed >= (uint64_t) i->st.st_size)
                percent = 100;
        else
                percent = (unsigned) ((i->written_compressed * FUNC1(100)) / (uint64_t) i->st.st_size);

        if (percent == i->last_percent)
                return;

        if (!FUNC4(&i->progress_ratelimit))
                return;

        FUNC5(false, "X_IMPORT_PROGRESS=%u", percent);
        FUNC3("Imported %u%%.", percent);

        i->last_percent = percent;
}