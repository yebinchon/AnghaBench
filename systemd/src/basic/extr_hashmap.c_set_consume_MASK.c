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
typedef  void Set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*,void*) ; 

int FUNC3(Set *s, void *value) {
        int r;

        FUNC0(s);
        FUNC0(value);

        r = FUNC2(s, value);
        if (r <= 0)
                FUNC1(value);

        return r;
}