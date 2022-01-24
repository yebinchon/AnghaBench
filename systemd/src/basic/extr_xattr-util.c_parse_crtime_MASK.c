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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  le64_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(le64_t le, usec_t *usec) {
        uint64_t u;

        FUNC1(usec);

        u = FUNC2(le);
        if (FUNC0(u, 0, (uint64_t) -1))
                return -EIO;

        *usec = (usec_t) u;
        return 0;
}