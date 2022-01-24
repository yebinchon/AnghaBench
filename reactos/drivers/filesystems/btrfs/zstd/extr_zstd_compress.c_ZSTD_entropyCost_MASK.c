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
 unsigned int const* kInverseProbabiltyLog256 ; 

__attribute__((used)) static size_t FUNC1(unsigned const* count, unsigned const max, size_t const total)
{
    unsigned cost = 0;
    unsigned s;
    for (s = 0; s <= max; ++s) {
        unsigned norm = (unsigned)((256 * count[s]) / total);
        if (count[s] != 0 && norm == 0)
            norm = 1;
        FUNC0(count[s] < total);
        cost += count[s] * kInverseProbabiltyLog256[norm];
    }
    return cost >> 8;
}