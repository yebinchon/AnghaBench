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
typedef  char const Table ;

/* Variables and functions */
 int JSON_FORMAT_COLOR_AUTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ arg_legend ; 
 int /*<<< orphan*/  arg_output ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__) ; 
 int FUNC9 (char const*,size_t,size_t) ; 

__attribute__((used)) static int FUNC10(Table *table, const char *word) {
        int r;

        FUNC1(table);
        FUNC1(word);

        if (FUNC5(table) > 1 || FUNC0(arg_output)) {
                r = FUNC9(table, (size_t) 0, (size_t) -1);
                if (r < 0)
                        return FUNC2(r, "Failed to sort table: %m");

                FUNC8(table, arg_legend);

                if (FUNC0(arg_output))
                        r = FUNC7(table, NULL, FUNC3(arg_output) | JSON_FORMAT_COLOR_AUTO);
                else
                        r = FUNC6(table, NULL);
                if (r < 0)
                        return FUNC2(r, "Failed to show table: %m");
        }

        if (arg_legend) {
                if (FUNC5(table) > 1)
                        FUNC4("\n%zu %s listed.\n", FUNC5(table) - 1, word);
                else
                        FUNC4("No %s.\n", word);
        }

        return 0;
}