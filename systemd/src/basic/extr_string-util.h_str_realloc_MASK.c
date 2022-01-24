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
 char* FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static inline char* FUNC2(char **p) {
        /* Reallocate *p to actual size */

        if (!*p)
                return NULL;

        char *t = FUNC0(*p, FUNC1(*p) + 1);
        if (!t)
                return NULL;

        return (*p = t);
}