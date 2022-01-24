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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 unsigned int CHAR_BIT ; 
 unsigned int RAND_MAX ; 
 int UINT_MAX ; 
 unsigned int nRandBytes ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
    unsigned int nRandMax;
    unsigned int nRandMaxBits;
    time_t tLoc;

    nRandMax = RAND_MAX;
    for(nRandMaxBits = 0; nRandMax != 0; nRandMax >>= 1, ++ nRandMaxBits);
    nRandBytes = nRandMaxBits / CHAR_BIT;
    //assert(nRandBytes != 0);
    FUNC0((unsigned)(FUNC1(&tLoc) & UINT_MAX));
    return 1;
}