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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("test"));

        FUNC0(!FUNC1(NULL));
        FUNC0(!FUNC1(""));
        FUNC0(!FUNC1("xxx\a"));
        FUNC0(!FUNC1("xxx\007b"));
        FUNC0(!FUNC1("\007\009"));
        FUNC0(!FUNC1("5_starting_with_a_number_is_wrong"));
        FUNC0(!FUNC1("#¤%&?_only_numbers_letters_and_underscore_allowed"));
}