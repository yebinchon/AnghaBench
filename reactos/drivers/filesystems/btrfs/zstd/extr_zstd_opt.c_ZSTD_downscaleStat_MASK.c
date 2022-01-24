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
typedef  size_t U32 ;

/* Variables and functions */
 int ZSTD_FREQ_DIV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static U32 FUNC1(U32* table, U32 lastEltIndex, int malus)
{
    U32 s, sum=0;
    FUNC0(ZSTD_FREQ_DIV+malus > 0 && ZSTD_FREQ_DIV+malus < 31);
    for (s=0; s<=lastEltIndex; s++) {
        table[s] = 1 + (table[s] >> (ZSTD_FREQ_DIV+malus));
        sum += table[s];
    }
    return sum;
}