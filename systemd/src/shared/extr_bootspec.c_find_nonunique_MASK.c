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
typedef  int /*<<< orphan*/  BootEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(BootEntry *entries, size_t n_entries, bool *arr) {
        size_t i, j;
        bool non_unique = false;

        FUNC0(entries || n_entries == 0);
        FUNC0(arr || n_entries == 0);

        for (i = 0; i < n_entries; i++)
                arr[i] = false;

        for (i = 0; i < n_entries; i++)
                for (j = 0; j < n_entries; j++)
                        if (i != j && FUNC2(FUNC1(entries + i),
                                            FUNC1(entries + j)))
                                non_unique = arr[i] = arr[j] = true;

        return non_unique;
}