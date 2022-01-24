#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 scalar_t__ arg_keep ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char*,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void) {
        JournalFile *f1, *f2, *f3, *f4;
        char t[] = "/var/tmp/journal-XXXXXX";

        FUNC9(LOG_DEBUG);

        FUNC6(t);

        FUNC0(FUNC3(-1, "test.journal", O_RDWR|O_CREAT, 0666, false, (uint64_t) -1, false, NULL, NULL, NULL, NULL, &f1) == 0);

        FUNC0(FUNC3(-1, "test-compress.journal", O_RDWR|O_CREAT, 0666, true, (uint64_t) -1, false, NULL, NULL, NULL, NULL, &f2) == 0);

        FUNC0(FUNC3(-1, "test-seal.journal", O_RDWR|O_CREAT, 0666, false, (uint64_t) -1, true, NULL, NULL, NULL, NULL, &f3) == 0);

        FUNC0(FUNC3(-1, "test-seal-compress.journal", O_RDWR|O_CREAT, 0666, true, (uint64_t) -1, true, NULL, NULL, NULL, NULL, &f4) == 0);

        FUNC4(f1);
        FUNC7("");
        FUNC4(f2);
        FUNC7("");
        FUNC4(f3);
        FUNC7("");
        FUNC4(f4);
        FUNC7("");

        FUNC5("Done...");

        if (arg_keep)
                FUNC5("Not removing %s", t);
        else {
                FUNC1(".", 3000000, 0, 0, NULL, true);

                FUNC0(FUNC8(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        (void) FUNC2(f1);
        (void) FUNC2(f2);
        (void) FUNC2(f3);
        (void) FUNC2(f4);
}