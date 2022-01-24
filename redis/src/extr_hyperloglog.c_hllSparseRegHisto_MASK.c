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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int HLL_REGISTERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(uint8_t *sparse, int sparselen, int *invalid, int* reghisto) {
    int idx = 0, runlen, regval;
    uint8_t *end = sparse+sparselen, *p = sparse;

    while(p < end) {
        if (FUNC1(p)) {
            runlen = FUNC5(p);
            idx += runlen;
            reghisto[0] += runlen;
            p++;
        } else if (FUNC0(p)) {
            runlen = FUNC4(p);
            idx += runlen;
            reghisto[0] += runlen;
            p += 2;
        } else {
            runlen = FUNC2(p);
            regval = FUNC3(p);
            idx += runlen;
            reghisto[regval] += runlen;
            p++;
        }
    }
    if (idx != HLL_REGISTERS && invalid) *invalid = 1;
}