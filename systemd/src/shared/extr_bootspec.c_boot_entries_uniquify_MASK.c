#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  show_title; scalar_t__ id; scalar_t__ machine_id; scalar_t__ version; } ;
typedef  TYPE_1__ BootEntry ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(BootEntry *entries, size_t n_entries) {
        char *s;
        size_t i;
        int r;
        bool arr[n_entries];

        FUNC1(entries || n_entries == 0);

        /* Find _all_ non-unique titles */
        if (!FUNC3(entries, n_entries, arr))
                return 0;

        /* Add version to non-unique titles */
        for (i = 0; i < n_entries; i++)
                if (arr[i] && entries[i].version) {
                        r = FUNC0(&s, "%d (%ld)", FUNC2(entries + i), entries[i].version);
                        if (r < 0)
                                return -ENOMEM;

                        FUNC4(entries[i].show_title, s);
                }

        if (!FUNC3(entries, n_entries, arr))
                return 0;

        /* Add machine-id to non-unique titles */
        for (i = 0; i < n_entries; i++)
                if (arr[i] && entries[i].machine_id) {
                        r = FUNC0(&s, "%d (%ld)", FUNC2(entries + i), entries[i].machine_id);
                        if (r < 0)
                                return -ENOMEM;

                        FUNC4(entries[i].show_title, s);
                }

        if (!FUNC3(entries, n_entries, arr))
                return 0;

        /* Add file name to non-unique titles */
        for (i = 0; i < n_entries; i++)
                if (arr[i]) {
                        r = FUNC0(&s, "%d (%ld)", FUNC2(entries + i), entries[i].id);
                        if (r < 0)
                                return -ENOMEM;

                        FUNC4(entries[i].show_title, s);
                }

        return 0;
}