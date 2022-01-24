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
typedef  int WORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int number_of_subtables_with_offsets ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * subtables_with_offsets ; 

__attribute__((used)) static WORD FUNC3(WORD *subtable)
{
    WORD index;

    for(index = 0; index < number_of_subtables_with_offsets; index++) {
        if(FUNC0(&subtables_with_offsets[index * 16], subtable, 16 * sizeof(WORD)) == 0) {
            return index;
        }
    }

    if(number_of_subtables_with_offsets >= 4096) {
        FUNC2("Could not add new subtable with offsets, storage is full\n");
        return 0;
    }

    FUNC1(&subtables_with_offsets[number_of_subtables_with_offsets * 16], subtable, 16 * sizeof(WORD));
    number_of_subtables_with_offsets++;

    return index;
}