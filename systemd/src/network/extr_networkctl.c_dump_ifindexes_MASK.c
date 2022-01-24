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
typedef  int /*<<< orphan*/  Table ;

/* Variables and functions */
 int /*<<< orphan*/  TABLE_EMPTY ; 
 int /*<<< orphan*/  TABLE_IFINDEX ; 
 int /*<<< orphan*/  TABLE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC2(Table *table, const char *prefix, const int *ifindexes) {
        unsigned c;
        int r;

        FUNC0(prefix);

        if (!ifindexes || ifindexes[0] <= 0)
                return 0;

        for (c = 0; ifindexes[c] > 0; c++) {
                r = FUNC1(table,
                                   TABLE_EMPTY,
                                   TABLE_STRING, c == 0 ? prefix : "",
                                   TABLE_IFINDEX, ifindexes[c]);
                if (r < 0)
                        return r;
        }

        return 0;
}