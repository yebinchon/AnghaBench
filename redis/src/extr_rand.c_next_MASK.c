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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__*) ; 
 int* a ; 
 scalar_t__ c ; 
 int* x ; 

__attribute__((used)) static void FUNC4(void) {
    uint32_t p[2], q[2], r[2], carry0, carry1;

    FUNC3(a[0], x[0], p);
    FUNC0(p[0], c, carry0);
    FUNC0(p[1], carry0, carry1);
    FUNC3(a[0], x[1], q);
    FUNC0(p[1], q[0], carry0);
    FUNC3(a[1], x[0], r);
    x[2] = FUNC2(carry0 + carry1 + FUNC1(p[1], r[0]) + q[1] + r[1] +
            a[0] * x[2] + a[1] * x[1] + a[2] * x[0]);
    x[1] = FUNC2(p[1] + r[0]);
    x[0] = FUNC2(p[0]);
}