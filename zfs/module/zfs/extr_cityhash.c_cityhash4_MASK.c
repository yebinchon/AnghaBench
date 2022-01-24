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
typedef  int uint64_t ;

/* Variables and functions */
 int HASH_K1 ; 
 int HASH_K2 ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int) ; 

uint64_t
FUNC2(uint64_t w1, uint64_t w2, uint64_t w3, uint64_t w4)
{
	uint64_t mul = HASH_K2 + 64;
	uint64_t a = w1 * HASH_K1;
	uint64_t b = w2;
	uint64_t c = w4 * mul;
	uint64_t d = w3 * HASH_K2;
	return (FUNC0(FUNC1(a + b, 43) + FUNC1(c, 30) + d,
	    a + FUNC1(b + HASH_K2, 18) + c, mul));

}