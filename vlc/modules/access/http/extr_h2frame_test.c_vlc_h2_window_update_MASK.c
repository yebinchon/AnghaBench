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
typedef  int uint_fast32_t ;

/* Variables and functions */
 void* CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void *ctx, uint_fast32_t credit)
{
    FUNC0(ctx == CTX);
    FUNC0(credit == 0x1000);
}