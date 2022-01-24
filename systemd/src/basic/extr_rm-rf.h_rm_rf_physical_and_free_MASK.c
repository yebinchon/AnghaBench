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
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static inline void FUNC2(char *p) {
        PROTECT_ERRNO;
        (void) FUNC1(p, REMOVE_ROOT|REMOVE_PHYSICAL);
        FUNC0(p);
}