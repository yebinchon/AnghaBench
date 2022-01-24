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
typedef  int /*<<< orphan*/  U32 ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(U32* seed, void* ptr, size_t size)
{
    size_t i;
    BYTE* op = ptr;

    for (i = 0; i + 4 <= size; i += 4) {
        FUNC0(op + i, FUNC1(seed));
    }
    for (; i < size; i++) {
        op[i] = FUNC1(seed) & 0xff;
    }
}