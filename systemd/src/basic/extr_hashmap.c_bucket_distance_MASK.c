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
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC1(HashmapBase *h, unsigned idx, unsigned from) {
        return idx >= from ? idx - from
                           : FUNC0(h) + idx - from;
}