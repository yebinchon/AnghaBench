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
 int FUNC1 (char const*) ; 
 size_t FUNC2 (char const*,int) ; 

__attribute__((used)) static void FUNC3(void) {
    const char *s = "aÉbÔc";
    FUNC0(FUNC1(s) == 7); // É and Ô are 2 bytes-wide

    size_t count;

    count = FUNC2(s, 1);
    FUNC0(count == 1);

    count = FUNC2(s, 2);
    FUNC0(count == 1); // É is 2 bytes-wide

    count = FUNC2(s, 3);
    FUNC0(count == 3);

    count = FUNC2(s, 4);
    FUNC0(count == 4);

    count = FUNC2(s, 5);
    FUNC0(count == 4); // Ô is 2 bytes-wide

    count = FUNC2(s, 6);
    FUNC0(count == 6);

    count = FUNC2(s, 7);
    FUNC0(count == 7);

    count = FUNC2(s, 8);
    FUNC0(count == 7); // no more chars
}