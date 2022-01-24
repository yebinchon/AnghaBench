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
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_PRIVATE ; 
 int /*<<< orphan*/  MS_SHARED ; 
 int /*<<< orphan*/  MS_SLAVE ; 
 char const* FUNC1 (unsigned long) ; 

__attribute__((used)) static const char* FUNC2(unsigned long n) {
        if (!FUNC0(n, 0, MS_SHARED, MS_PRIVATE, MS_SLAVE))
                return NULL;

        return FUNC1(n);
}