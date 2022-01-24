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
struct TYPE_3__ {scalar_t__ sparseFileSupport; scalar_t__ testMode; } ;
typedef  TYPE_1__ FIO_prefs_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const FIO_prefs_t* const prefs, FILE* file, unsigned storedSkips)
{
    if (prefs->testMode) FUNC2(storedSkips == 0);
    if (storedSkips>0) {
        FUNC2(prefs->sparseFileSupport > 0);  /* storedSkips>0 implies sparse support is enabled */
        (void)prefs;   /* assert can be disabled, in which case prefs becomes unused */
        if (FUNC1(file, storedSkips-1, SEEK_CUR) != 0)
            FUNC0(69, "Final skip error (sparse file support)");
        /* last zero must be explicitly written,
         * so that skipped ones get implicitly translated as zero by FS */
        {   const char lastZeroByte[1] = { 0 };
            if (FUNC3(lastZeroByte, 1, 1, file) != 1)
                FUNC0(69, "Write error : cannot write last zero : %s", FUNC4(errno));
    }   }
}