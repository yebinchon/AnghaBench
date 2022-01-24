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
typedef  scalar_t__ usec_t ;

/* Variables and functions */
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(usec_t a, usec_t b) {
        usec_t d;

        if (a > b)
                d = a - b;
        else
                d = b - a;

        FUNC0(d < 10*USEC_PER_SEC);
}