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
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 scalar_t__ arg_keep ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC17(void (*setup)(void)) {
        char t[] = "/var/tmp/journal-skip-XXXXXX";
        sd_journal *j;
        int r;

        FUNC4(t);

        setup();

        /* Seek to head, iterate down.
         */
        FUNC0(FUNC10(&j, t, 0));
        FUNC0(FUNC13(j));
        FUNC0(FUNC8(j));
        FUNC15(j, 4);
        FUNC7(j);

        /* Seek to tail, iterate up.
         */
        FUNC0(FUNC10(&j, t, 0));
        FUNC0(FUNC14(j));
        FUNC0(FUNC11(j));
        FUNC16(j, 4);
        FUNC7(j);

        /* Seek to tail, skip to head, iterate down.
         */
        FUNC0(FUNC10(&j, t, 0));
        FUNC0(FUNC14(j));
        FUNC0(r = FUNC12(j, 4));
        FUNC1(r == 4);
        FUNC15(j, 4);
        FUNC7(j);

        /* Seek to head, skip to tail, iterate up.
         */
        FUNC0(FUNC10(&j, t, 0));
        FUNC0(FUNC13(j));
        FUNC0(r = FUNC9(j, 4));
        FUNC1(r == 4);
        FUNC16(j, 4);
        FUNC7(j);

        FUNC3("Done...");

        if (arg_keep)
                FUNC3("Not removing %s", t);
        else {
                FUNC2(".", 3000000, 0, 0, NULL, true);

                FUNC1(FUNC6(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        FUNC5("------------------------------------------------------------");
}