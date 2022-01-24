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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(int array[], int size)
{
    int i;
    --size;
    for (i = 0; i < size; ++i) {
        FUNC0("0x%04x,", array[i]);
        if (!((i + 1) & 0x7)) {
            FUNC0("\n    ");
        } else {
            FUNC0(" ");
        }
    }
    FUNC0("0x%04x\n};\n\n", array[size]);
}